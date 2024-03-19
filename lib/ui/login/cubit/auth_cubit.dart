import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/common/database/database_helper.dart';
import '../../../core/home/data/models/user.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const _Initial());

  void invalidate() {
    emit(state.copyWith(error: false));
  }

  Future<void> initDatabase() async {
    final db =
        await $FloorDatabaseHelper.databaseBuilder('database.db').build();
    emit(state.copyWith(db: db));
  }

  Future<void> createUser(String username, String password) async {
    User user = User(name: username, password: password);
    final id = await state.db?.userDao.insertUser(user);
    user = User(name: username, password: password, id: id);
  }

  Future<void> login(String username, String password) async {
    List<User>? users = await state.db?.userDao.readAll();
    final user = users?.firstWhere(
        (element) => element.name == username && element.password == password,
        orElse: () => User(name: '', password: ''));
    if (user?.name == username && user?.password == password) {
      emit(state.copyWith(success: true));
    } else {
      emit(state.copyWith(error: true, message: "Invalid credentials"));
    }
  }
}
