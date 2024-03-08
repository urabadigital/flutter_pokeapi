import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma/core/home/domain/usecases/home_usecases.dart';
import 'package:pragma/injectable_dependency.dart';
import 'package:pragma/ui/home/view/home_mobil.dart';
import 'package:pragma/ui/home/view/home_web.dart';
import 'package:responsive_framework/responsive_framework.dart';

// import '../../../core/presentation/cubit/dart_mode/theme_cubit.dart';
// import '../../../core/presentation/utils/theme_mode_button.dart';
import '../bloc/home_bloc.dart';

// import '../widget/movies_search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String path = '/home';
  static const String name = 'home';

  static Widget create() => BlocProvider(
        lazy: false,
        create: (context) => HomeBloc(
          homeUseCase: getIt<HomeUseCase>(),
        )..add(const HomeEvent.loadCatList()),
        child: const HomeView(),
      );

  @override
  Widget build(BuildContext context) {
    final breakpoint = ResponsiveBreakpoints.of(context).breakpoint;
    return Scaffold(
      body: switch (breakpoint.name) {
        MOBILE => const HomeMobil(),
        (_) => const HomeWeb(),
      },
    );
  }
}
