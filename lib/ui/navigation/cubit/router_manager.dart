import 'package:bloc/bloc.dart';
import 'package:go_router/go_router.dart';

import 'router.dart';


class RouterManager extends Cubit<GoRouter> {
  RouterManager() : super(router);

  void pop() {
    state.pop();
  }

  void push(String route) {
    state.push(route);
  }

  void goNamed(
    String route, {
    Map<String, String>? pathParams,
  }) {
    state.goNamed(route, pathParameters: pathParams ?? <String, String>{});
  }
}
