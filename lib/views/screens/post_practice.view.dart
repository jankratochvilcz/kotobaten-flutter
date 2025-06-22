import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/sizes.dart';
import 'package:kotobaten/extensions/iterable.dart';
import 'package:kotobaten/models/slices/practice/card_impression.dart';
import 'package:kotobaten/models/slices/practice/practice_model.dart';
import 'package:kotobaten/models/slices/practice/practice_repository.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/models/slices/user/user_service.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/windowing_app_bar.dart';
import 'package:kotobaten/views/organisms/home/card_learn.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/organisms/word_grid.dart';

@RoutePage(name: 'PostPracticeRoute')
class PostPracticeView extends HookConsumerWidget {
  const PostPracticeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationService = ref.read(navigationServiceProvider);
    final userService = ref.read(userServiceProvider);
    final userModel = ref.watch(userRepositoryProvider);
    final practiceModel = ref.watch(practiceRepositoryProvider);

    final hasUpdatedState = useState(false);

    useEffect(() {
      if (hasUpdatedState.value ||
          userModel is! UserModelInitialized ||
          practiceModel is! PracticeModelFinished) {
        return;
      }

      Future.microtask(() => userService.refreshUser());
      hasUpdatedState.value = true;

      return null;
    }, [userModel, practiceModel]);

    goToPractice() async {
      await navigationService.goPractice(context, replaceCurrent: true);
    }

    if (userModel is UserModelInitialized &&
        !userModel.refreshing &&
        practiceModel is PracticeModelFinished) {
      final cards = practiceModel.allImpressions
          .whereType<CardImpression>()
          .map((x) => x.card);
      final uniqueCards = cards
          .where((x) =>
              x.id != null && x.id != 0) // ID = 0 are generated sentences
          .unique((x) => x.id!)
          .toList();

      return Scaffold(
          appBar: const WindowingAppBar(),
          backgroundColor: Theme.of(context).colorScheme.background,
          body: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                  padding: verticalPadding(isDesktop(context)
                      ? PaddingType.xxxLarge
                      : PaddingType.xxLarge),
                  child: CardLearn(
                    userModel.user,
                    goToPractice,
                    heading: "Great work! 🙌",
                    ctaText: "Keep learning!",
                  )),
              Padding(
                  padding: bottomPadding(PaddingType.large),
                  child: const Center(
                      child: Heading("Practiced words", HeadingStyle.h2))),
              Center(child: WordGrid(uniqueCards))
            ],
          )));
    }

    return const Loading();
  }
}
