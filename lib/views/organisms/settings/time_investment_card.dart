import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/button_async.dart';
import 'package:kotobaten/views/molecules/headed.dart';
import 'package:kotobaten/views/organisms/loading.dart';

const maxDailyCards = 250.0;
const minDailyCards = 20.0;

class TimeInvestmentCard extends HookConsumerWidget {
  const TimeInvestmentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userModel = ref.watch(userRepositoryProvider);
    final userService = ref.read(userServiceProvider);
    final currentValue = useState(0);
    final isInitialized = useState(false);

    if (userModel is! UserModelInitialized) {
      return const Loading();
    }

    if (!isInitialized.value) {
      currentValue.value = userModel.user.user.retentionBackstopMaxThreshold;
      isInitialized.value = true;
    }

    final currentValueDouble = currentValue.value.toDouble();
    final normalizedValue =
        min(max(minDailyCards, currentValueDouble), maxDailyCards);

    return Headed(
        SizedBox(
          width: 400,
          child: Column(children: [
            const Description(
                'Set the maximum for how many words you can daily. 100 words may take 30 minutes with good focus.'),
            Padding(
                padding: topPadding(PaddingType.xLarge),
                child: Description(
                    "${currentValueDouble.toInt().toString()} words")),
            Slider(
              value: normalizedValue,
              label: normalizedValue.toString(),
              inactiveColor:
                  Theme.of(context).colorScheme.primary.withAlpha(64),
              max: maxDailyCards,
              min: minDailyCards,
              onChanged: (value) {
                final valueAsInt = value.toInt();
                currentValue.value = valueAsInt;
                userService.updateRetentionBackstopMaxThreshold(valueAsInt);
              },
            ),
            ButtonAsync(
              'Reset today\'s practice cards',
              () async {
                await userService.refreshUser(updateRetentionBackstop: true);
              },
              type: ButtonType.standard,
            )
          ]),
        ),
        const Heading('Time investment', HeadingStyle.h2));
  }
}
