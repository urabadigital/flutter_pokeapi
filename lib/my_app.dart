import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:evolvers/ui/navigation/cubit/router_manager.dart';
import 'package:evolvers/core/common/theme/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const title = 'PokeDesk';

  @override
  Widget build(BuildContext context) {
    GoRouter routerConfig = context.watch<RouterManager>().state;
    return AdaptiveTheme(
      light: AppTheme.light,
      dark: AppTheme.dark,
      initial: AdaptiveThemeMode.system,
      builder: (theme, darkTheme) => ResponsiveBreakpoints.builder(
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 960, name: TABLET),
          const Breakpoint(start: 961, end: double.infinity, name: DESKTOP),
        ],
        child: MaterialApp.router(
          title: title,
          routerConfig: routerConfig,
          builder: BotToastInit(),
          theme: theme,
          darkTheme: darkTheme,
        ),
      ),
    );
  }
}
