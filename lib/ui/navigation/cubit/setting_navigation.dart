import 'package:flutter_bloc/flutter_bloc.dart';

import 'router_manager.dart';

class SettingNavigation extends Cubit<void> {
  SettingNavigation({required this.navigation}) : super(null);
  late RouterManager navigation;

  void pop() {
    navigation.pop();
  }
}
