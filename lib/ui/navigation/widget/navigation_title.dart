import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../my_app.dart';
import '../../home/view/home_view.dart';

class NavigationTitle extends StatelessWidget {
  const NavigationTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SelectionContainer.disabled(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => context.go(HomeView.path),
          child: Text(
            MyApp.title,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
