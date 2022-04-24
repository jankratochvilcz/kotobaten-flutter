import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/consts/colors.dart';
import 'package:kotobaten/consts/paddings.dart';
import 'package:kotobaten/models/slices/auth/auth_model.dart';
import 'package:kotobaten/models/slices/auth/auth_repository.dart';
import 'package:kotobaten/models/slices/auth/auth_result.dart';
import 'package:kotobaten/models/slices/auth/auth_validation_service.dart';
import 'package:kotobaten/services/daily_reminder_service.dart';
import 'package:kotobaten/services/navigation_service.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/atoms/description_rich_text.dart';
import 'package:kotobaten/views/atoms/logo.dart';
import 'package:kotobaten/views/molecules/button.dart';
import 'package:kotobaten/views/molecules/windowing_app_bar.dart';
import 'package:kotobaten/views/screens/login.viewmodel.dart';
import 'package:kotobaten/views/atoms/text_span_factory.dart';

enum LoginKind { login, signup }

class _SwitchModeButton extends StatelessWidget {
  final LoginViewModel viewModel;
  final ValueNotifier<LoginKind> loginKind;

  const _SwitchModeButton(this.viewModel, this.loginKind);

  @override
  Widget build(BuildContext context) => TextButton(
        child: Text(viewModel.getSwitchKindButtonLabel(loginKind.value)),
        onPressed: () async {
          loginKind.value = loginKind.value == LoginKind.login
              ? LoginKind.signup
              : LoginKind.login;

          await viewModel.reset();
        },
      );
}

class LoginView extends HookConsumerWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(loginViewModelProvider);
    final authModel = ref.watch(authRepositoryProvider);
    final authValidationService = ref.read(authValidationServiceProvider);
    final dailyReminderService = ref.read(dailyReminderServiceProvider);
    final navigationService = ref.read(navigationServiceProvider);

    final loginKind = useState(LoginKind.signup);

    if (authModel is AuthModelAuthenticated &&
        authModel.result is AuthResultSuccess) {
      Future.microtask(() async {
        await dailyReminderService.initializeDefaults();
        await navigationService.goHome(context);
      });
    }

    final descriptionStyle = TextStyle(color: descriptionColor);

    const inputConstraints = BoxConstraints(maxWidth: 400);

    final authResult =
        authModel is AuthModelAuthenticated ? authModel.result : null;
    final errorMessage = authResult != null && authResult is! AuthResultSuccess
        ? _getErrorMessage(authResult)
        : null;

    return Scaffold(
      appBar: const WindowingAppBar(),
      body: Padding(
          padding: horizontalPadding(PaddingType.xLarge),
          child: Form(
              key: viewModel.form,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: bottomPadding(PaddingType.xxLarge),
                      child: const Logo()),
                  Padding(
                      padding: bottomPadding(PaddingType.xLarge),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Description(viewModel
                              .getSwitchKindDescription(loginKind.value)),
                          _SwitchModeButton(viewModel, loginKind)
                        ],
                      )),
                  ConstrainedBox(
                      constraints: inputConstraints,
                      child: TextFormField(
                        controller: viewModel.email,
                        validator: authValidationService.validateEmail,
                        autofocus: true,
                        textInputAction: TextInputAction.next,
                        autofillHints: const [AutofillHints.email],
                        decoration: const InputDecoration(labelText: 'Email'),
                      )),
                  ConstrainedBox(
                      constraints: inputConstraints,
                      child: TextFormField(
                        controller: viewModel.password,
                        obscureText: true,
                        autofillHints: const [AutofillHints.password],
                        validator: authValidationService.validatePassword,
                        decoration:
                            const InputDecoration(labelText: 'Password'),
                      )),
                  if (errorMessage != null)
                    Padding(
                        padding: topPadding(PaddingType.standard),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              errorMessage,
                              style: TextStyle(color: errorColor),
                            ),
                            if (authResult is AuthResultError &&
                                authResult.errorCode == 409)
                              _SwitchModeButton(viewModel, loginKind)
                          ],
                        )),
                  Padding(
                      padding: topPadding(PaddingType.xxLarge),
                      child: Button(
                        viewModel.getPrimaryButtonDescription(
                            loginKind.value, authModel),
                        () async =>
                            await viewModel.authenticate(loginKind.value),
                        type: ButtonType.primary,
                        size: ButtonSize.big,
                        icon: Icons.login,
                      )),
                  if (loginKind.value == LoginKind.signup)
                    Padding(
                        padding: topPadding(PaddingType.large),
                        child: DescriptionRichText([
                          TextSpan(
                              text:
                                  'By clicking Sign up, you\'re agreeing to the ',
                              style: descriptionStyle),
                          TextSpanFactory.link('Terms of Service',
                              Uri.https('kotobaten.app', 'terms'), context,
                              color: descriptionColor),
                          TextSpan(text: ', ', style: descriptionStyle),
                          TextSpanFactory.link('Privacy Policy',
                              Uri.https('kotobaten.app', 'privacy'), context,
                              color: descriptionColor),
                          TextSpan(text: ', and ', style: descriptionStyle),
                          TextSpanFactory.link('Cookie Policy',
                              Uri.https('kotobaten.app', 'cookies'), context,
                              color: descriptionColor)
                        ], textAlign: TextAlign.center))
                ],
              ))),
    );
  }

  String? _getErrorMessage(AuthResult result) {
    if (result is AuthResultError) {
      switch (result.errorCode) {
        case 409:
          return "Account already exists.";
        case 401:
          return "Invalid user email or password.";
        default:
          return "Unknown error.";
      }
    } else if (result is AuthResultException) {
      return result.exception.message;
    } else {
      return null;
    }
  }
}
