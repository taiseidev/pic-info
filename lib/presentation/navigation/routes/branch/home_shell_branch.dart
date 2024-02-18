import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../ui/home/home_page.dart';
import '../route/home/home_detail_route.dart';

const homeStatefulShellBranch = TypedStatefulShellBranch<HomeShellBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomePageRoute>(
      path: '/home',
      routes: [
        TypedGoRoute<HomeDetailRoute>(
          path: 'home-detail',
        ),
      ],
    ),
  ],
);

class HomeShellBranch extends StatefulShellBranchData {
  const HomeShellBranch();
}

class HomePageRoute extends GoRouteData {
  const HomePageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => HomePage();
}
