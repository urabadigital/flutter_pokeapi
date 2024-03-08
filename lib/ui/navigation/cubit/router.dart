import 'package:flutter/material.dart';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:pragma/ui/home/view/home_view.dart';

// import '../../../../ui/favorite/router.dart';
import '../../home/router.dart';
import '../scaffold_with_navigation.dart';
// import '../../../../ui/setting/router.dart';
// import '../view/scaffold_with_navigation.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: kDebugMode,
  initialLocation: HomeView.path,
  observers: [BotToastNavigatorObserver()],
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return SelectionArea(
          child: ScaffoldWithNavigation(navigationShell: navigationShell),
        );
      },
      branches: [
        homeRoutes,
        // favoriteRoutes,
        // settingRoutes,
      ],
    ),
  ],
);
