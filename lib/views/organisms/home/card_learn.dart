import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/slices/user/user.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/button_async.dart';
import 'package:kotobaten/views/molecules/headed.dart';

class CardLearn extends HookWidget {
  final UserInitialized user;
  final Future Function() goToPractice;
  final String ctaText;
  final String heading;

  const CardLearn(this.user, this.goToPractice,
      {Key? key, this.heading = "Learn", this.ctaText = "Learn"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final leftForToday = user.goals.discoverDaily - user.stats.discoveredToday;
    final goingToPractice = useState(false);

    return CallbackShortcuts(
        bindings: {
          const SingleActivator(LogicalKeyboardKey.enter): () async {
            goingToPractice.value = true;
            await goToPractice();
            goingToPractice.value = false;
          },
        },
        child: Focus(
            autofocus: true,
            child: Headed(
              Column(children: [
                user.stats.leftToPractice > 0
                    ? DescriptionRichText(
                        [
                          const TextSpan(text: 'You have '),
                          TextSpan(
                              text:
                                  '${user.stats.leftToPractice > 0 ? user.stats.leftToPractice.toString() : 'no'} words',
                              style:
                                  const TextStyle(fontWeight: FontWeight.w700)),
                          const TextSpan(text: ' to refresh.')
                        ],
                      )
                    : DescriptionRichText(
                        [
                          TextSpan(
                              text: leftForToday > 0
                                  ? '$leftForToday more new words to reach your daily goal. 💪'
                                  : 'Practice ✅ Daily goal ✅. Amazing progress! 🙌')
                        ],
                        textAlign: TextAlign.center,
                      ),
                Padding(
                    padding: topPadding(PaddingType.standard),
                    child: DescriptionRichText(
                      [
                        const TextSpan(text: 'You learned '),
                        TextSpan(
                            text:
                                '${user.stats.discoveredWeek > 0 ? user.stats.discoveredWeek.toString() : 'no'} words',
                            style:
                                const TextStyle(fontWeight: FontWeight.w700)),
                        const TextSpan(text: ' this week.')
                      ],
                    )),
                Padding(
                    padding: topPadding(PaddingType.large),
                    child: ButtonAsync(
                      ctaText,
                      goToPractice,
                      icon: Icons.bolt_outlined,
                      size: ButtonSize.big,
                      type: ButtonType.primary,
                      shortcut: '⏎',
                      overrideIsInProgress: goingToPractice.value,
                    ))
              ]),
              heading,
              HeadingStyle.h1,
            )));
  }
}
