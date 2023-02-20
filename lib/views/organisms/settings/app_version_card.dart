import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/models/app_package_information.dart';
import 'package:kotobaten/views/atoms/description.dart';
import 'package:kotobaten/views/atoms/empty.dart';
import 'package:kotobaten/views/atoms/heading.dart';
import 'package:kotobaten/views/molecules/headed.dart';
import 'package:kotobaten/views/organisms/loading.dart';

class AppVersionCard extends HookConsumerWidget {
  const AppVersionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appPackageInformation = ref.watch(appPackageInformationProvider);

    return appPackageInformation.when(
        data: (data) => Headed(
            Description("${data.appName} ${data.version}+${data.buildNumber}"),
            const Heading('App Version', HeadingStyle.h2)),
        error: (obj, trace) => const Empty(),
        loading: () => const Loading());
  }
}
