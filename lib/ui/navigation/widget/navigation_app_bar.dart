import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../core/common/utils/theme_mode_button.dart';
import 'navigation_title.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({super.key, this.scaffoldDrawerKey});
  final GlobalKey<ScaffoldState>? scaffoldDrawerKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const NavigationTitle(),
      leading: Visibility(
        visible: ResponsiveBreakpoints.of(context).largerThan(MOBILE),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                width: 1,
              ),
            ),
          ),
          child: IconButton(
            color: Colors.black,
            onPressed: () {
              scaffoldDrawerKey?.currentState?.openDrawer();
            },
            icon: Container(
              // height: 40,
              // width: 40,
              // decoration: BoxDecoration(
              //   shape: BoxShape.circle,
              //   color: Theme.of(context).colorScheme.background,
              // ),
              alignment: Alignment.center,
              child: Icon(
                Icons.menu,
                color: Theme.of(context).hintColor,
              ),
            ),
          ),
        ),
      ),
      centerTitle: false,
      elevation: 4,
      actions: const [
        ThemeModeButton.icon(),
        Gap(8),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
