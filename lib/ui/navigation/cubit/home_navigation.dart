import 'package:evolvers/core/common/utils/extension/extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'router_manager.dart';

class HomeNavigation extends Cubit<void> {
  HomeNavigation({required this.navigation}) : super(null);
  late RouterManager navigation;

  void pop() {
    navigation.pop();
  }

  void push(String route, {Object? extra}) {
    navigation.push(route, extra: extra);
  }

  void go(String route, {Object? extra}) {
    navigation.go(route, extra: extra);
  }

  void navigateCatDetails(String route, {required String? name}) {
    Map<String, dynamic> params = {
      'name': name,
    };
    navigation.push('${route.toParamUrl(params)}');
  }
}
