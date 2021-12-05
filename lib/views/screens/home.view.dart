import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/consts/routes.dart';
import 'package:kotobaten/models/user/user.dart';
import 'package:kotobaten/services/providers.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/headed.dart';
import 'package:kotobaten/views/organisms/loading.dart';
import 'package:kotobaten/views/screens/home.model.dart';
import 'package:kotobaten/views/screens/home.viewmodel.dart';

final _viewModelProvider = StateNotifierProvider<HomeViewModel, HomeModel>(
    (ref) => HomeViewModel(
        ref.watch(kotobatenApiServiceProvider),
        ref.watch(authenticationServiceProvider),
        ref.watch(userRepositoryProvider.notifier)));

class HomeView extends HookConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(_viewModelProvider.notifier);
    final model = ref.watch(_viewModelProvider);
    final user = ref.watch(userRepositoryProvider);

    if (model is Initial ||
        (model is AwaitingLogin && user is InitializedUser)) {
      Future.microtask(() => viewModel.initialize());
    }

    if (model is RequiresLogin) {
      Future.microtask(() {
        viewModel.redirectedToLogin();
        Navigator.pushNamedAndRemoveUntil(
            context, loginRoute, (route) => false);
      });
    }

    if (model is Initialized && user is InitializedUser) {
      return Scaffold(
          body: Center(
              child: Column(
        children: [
          Padding(
              child: const Image(
                  image: AssetImage('assets/logos/square_gray.png'), width: 80),
              padding: EdgeInsets.all(getPadding(PaddingType.largePlusPlus))),
          Padding(
              padding: bottomPadding(PaddingType.largePlus),
              child: Headed(
                  Column(children: [
                    DescriptionRichText(
                      [
                        const TextSpan(text: 'You have '),
                        TextSpan(
                            text:
                                '${user.stats.leftToPractice > 0 ? user.stats.leftToPractice.toString() : 'no'} words',
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        const TextSpan(text: ' to refresh.')
                      ],
                    ),
                    DescriptionRichText(
                      [
                        const TextSpan(text: 'You learned '),
                        TextSpan(
                            text:
                                '${user.stats.discoveredWeek > 0 ? user.stats.discoveredWeek.toString() : 'no'} words',
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        const TextSpan(text: ' this week.')
                      ],
                    ),
                    Padding(
                        padding: topPadding(PaddingType.large),
                        child: Button('Learn', () {
                          Navigator.pushNamed(context, practiceRoute);
                        },
                            icon: Icons.bolt_outlined,
                            size: ButtonSize.big,
                            type: ButtonType.primary))
                  ]),
                  'Learn',
                  HeadingStyle.h1)),
          Headed(
              Column(children: [
                DescriptionRichText(
                  [
                    const TextSpan(text: 'You added '),
                    TextSpan(
                        text:
                            '${user.stats.discoveredWeek > 0 ? user.stats.discoveredWeek.toString() : 'no'} words',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const TextSpan(text: ' this week.')
                  ],
                ),
                Padding(
                    padding: topPadding(PaddingType.large),
                    child: Button('Add word', () => {},
                        icon: Icons.add_circle_outline,
                        size: ButtonSize.big,
                        type: ButtonType.secondary))
              ]),
              'Collect',
              HeadingStyle.h1)
        ],
      )));
    }

    return const Loading();
  }
}
