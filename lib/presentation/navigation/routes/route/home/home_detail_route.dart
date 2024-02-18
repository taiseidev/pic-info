import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../ui/home/image_detail_page.dart';

@TypedGoRoute<HomeDetailRoute>(
  path: 'home-detail',
)
class HomeDetailRoute extends GoRouteData {
  const HomeDetailRoute({
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context, GoRouterState state) => ImageDetailPage(
        index: index,
      );
}
