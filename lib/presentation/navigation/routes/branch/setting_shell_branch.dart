import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../ui/setting/setting_page.dart';

const settingStatefulShellBranch = TypedStatefulShellBranch<SettingShellBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<SettingPageRoute>(
      path: '/setting',
    ),
  ],
);

class SettingShellBranch extends StatefulShellBranchData {
  const SettingShellBranch();
}

class SettingPageRoute extends GoRouteData {
  const SettingPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingPage();
}
