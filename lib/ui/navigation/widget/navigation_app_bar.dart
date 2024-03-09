import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/common/utils/theme_mode_button.dart';
import 'navigation_title.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({super.key, this.scaffoldDrawerKey});
  final GlobalKey<ScaffoldState>? scaffoldDrawerKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const NavigationTitle(),
      leading: IconButton(
        color: Colors.black,
        onPressed: () {
          scaffoldDrawerKey?.currentState?.openDrawer();
        },
        icon: Icon(
          Icons.menu,
          color: Theme.of(context).hintColor,
        ),
      ),
      centerTitle: true,
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
