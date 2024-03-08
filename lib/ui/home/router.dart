import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:pragma/ui/home/view/home_view.dart';

// import 'view/detail_view.dart';

final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');

StatefulShellBranch homeRoutes = StatefulShellBranch(
  navigatorKey: _homeNavigatorKey,
  routes: [
    GoRoute(
      path: HomeView.path,
      name: HomeView.name,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        child: HomeView.create(),
      ),
      routes: const [
        // GoRoute(
        //   path: MovieDetailView.path,
        //   name: MovieDetailView.name,
        //   pageBuilder: (context, state) {
        //     return MaterialPage(
        //       key: state.pageKey,
        //       child: MovieDetailView(
        //         key: state.pageKey,
        //         id: state.pathParameters['id'] as String,
        //       ),
        //     );
        //   },
        // ),
      ],
    ),
  ],
);
