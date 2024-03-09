import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:evolvers/core/home/domain/usecases/home_usecases.dart';
import 'package:evolvers/injectable_dependency.dart';
import 'package:evolvers/ui/home/view/home_movil.dart';
import 'package:evolvers/ui/home/view/home_web.dart';
import 'package:evolvers/ui/navigation/cubit/home_navigation.dart';
import 'package:evolvers/ui/navigation/cubit/router_manager.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../bloc/home_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String path = '/';
  static const String name = 'home';

  static Widget create() => MultiBlocProvider(
        providers: [
          BlocProvider(
            lazy: false,
            create: (context) => HomeBloc(
              homeUseCase: getIt<HomeUseCase>(),
            )
              ..add(const HomeEvent.getPokemonList())
              ..initScrollController(),
          ),
          BlocProvider.value(
            value: HomeNavigation(
              navigation: getIt<RouterManager>(),
            ),
          )
        ],
        child: const HomeView(),
      );

  @override
  Widget build(BuildContext context) {
    final breakpoint = ResponsiveBreakpoints.of(context).breakpoint;
    return Scaffold(
      body: switch (breakpoint.name) {
        MOBILE => const HomeMovil(),
        (_) => const HomeWeb(),
      },
    );
  }
}
