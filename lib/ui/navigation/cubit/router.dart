import 'package:flutter/material.dart';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:evolvers/ui/home/view/detail_view.dart';
import 'package:evolvers/ui/login/login.dart';

import '../../favorite/router.dart';
import '../../home/router.dart';
import '../../setting/router.dart';
import '../scaffold_with_navigation.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: kDebugMode,
  initialLocation: LoginView.path,
  observers: [BotToastNavigatorObserver()],
  routes: [
    GoRoute(
      path: LoginView.path,
      name: LoginView.name,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        child: const LoginView(),
      ),
    ),
    GoRoute(
      path: DetailView.path,
      name: DetailView.name,
      pageBuilder: (context, state) {
        return NoTransitionPage(
          key: state.pageKey,
          child: DetailView.create(
            name: state.pathParameters['name'] as String,
          ),
        );
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return SelectionArea(
          child: ScaffoldWithNavigation(navigationShell: navigationShell),
        );
      },
      branches: [
        homeRoutes,
        favoriteRoutes,
        settingRoutes,
      ],
    ),
  ],
);
