import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/headed.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:timezone/data/latest.dart' as timezones;
import 'package:timezone/timezone.dart' as timezones;

class TimezoneCard extends HookConsumerWidget {
  const TimezoneCard({Key? key}) : super(key: key);

  int getOffsetInHours(int offsetInMilliseconds) {
    return offsetInMilliseconds ~/ 3600000;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = useState(true);
    final selectedTimezone = useState<timezones.Location?>(null);
    final availableTimezones = useState<List<timezones.Location>>([]);

    final userService = ref.read(userServiceProvider);
    final userModel = ref.watch(userRepositoryProvider);

    if (userModel is! UserModelInitialized) {
      return const Loading();
    }

    final currentUser = userModel.user.user;

    useEffect(() {
      loading.value = true;
      timezones.initializeTimeZones();

      final locations = timezones.timeZoneDatabase.locations.entries
          .map((e) => e.value)
          .toList();
      locations
          .sort((a, b) => a.currentTimeZone.offset - b.currentTimeZone.offset);

      availableTimezones.value = locations;

      if (currentUser.timezoneName != '') {
        final originalTimezone = locations.firstWhereOrNull(
            (element) => element.name == currentUser.timezoneName);

        if (originalTimezone != null) {
          selectedTimezone.value = originalTimezone;
        }
      }

      loading.value = false;
      return;
    }, [currentUser]);

    if (loading.value) {
      return const Loading();
    }

    final dropdownMenuEntries = availableTimezones.value
        .map<DropdownMenuEntry<timezones.Location>>(
            (e) => DropdownMenuEntry<timezones.Location>(
                  value: e,
                  label:
                      "${e.name} ${e.currentTimeZone.offset >= 0 ? "+" : ""}${getOffsetInHours(e.currentTimeZone.offset).toString()}h",
                ));

    return Headed(
        Column(
          children: [
            const Description('You get new words to practice each day!'),
            DropdownMenu<timezones.Location>(
                initialSelection: selectedTimezone.value,
                dropdownMenuEntries: dropdownMenuEntries.toList(),
                onSelected: (value) async {
                  if (value == null) {
                    return;
                  }

                  await userService.updateTimezone(value.name,
                      getOffsetInHours(value.currentTimeZone.offset));
                }),
          ],
        ),
        const Heading('Timezone', HeadingStyle.h2));
  }
}
