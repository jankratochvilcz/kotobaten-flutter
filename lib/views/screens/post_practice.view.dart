import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/extensions/iterable.dart';
import 'package:kotobaten/models/slices/practice/practice_model.dart';
import 'package:kotobaten/models/slices/practice/practice_repository.dart';
import 'package:kotobaten/models/slices/practice/practice_service.dart';
import 'package:kotobaten/models/slices/user/user_model.dart';
import 'package:kotobaten/models/slices/user/user_repository.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/windowing_app_bar.dart';
import 'package:kotobaten/views/molecules/word_card.dart';
import 'package:kotobaten/views/organisms/home/card_learn.dart';
import 'package:kotobaten/views/organisms/loading.dart';

class PostPracticeView extends HookConsumerWidget {
  const PostPracticeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final practiceService = ref.read(practiceServiceProvider);
    final navigationService = ref.read(navigationServiceProvider);
    final userModel = ref.watch(userRepositoryProvider);
    final practiceModel = ref.watch(practiceRepositoryProvider);

    goToPractice() async {
      await practiceService.initialize();
      await navigationService.goPractice(context, replaceCurrent: true);
    }

    if (userModel is UserModelInitialized &&
        practiceModel is PracticeModelFinished) {
      final cards = practiceModel.allImpressions.map((x) => x.card);
      final uniqueCards = cards.unique((x) => x.id).toList();

      return Scaffold(
          appBar: const WindowingAppBar(),
          body: SafeArea(
              child: ListView.builder(
                  itemCount: uniqueCards.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Column(children: [
                        Padding(
                            padding: verticalPadding(PaddingType.xxxLarge),
                            child: CardLearn(
                              userModel.user,
                              goToPractice,
                              heading: "Great work! 🙌",
                              ctaText: "Keep learning!",
                            )),
                        const Heading("Practiced words", HeadingStyle.h2),
                      ]);
                    }

                    return ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 400),
                        child: WordCard(uniqueCards[index - 1]));
                  })));
    }

    return const Loading();
  }
}
