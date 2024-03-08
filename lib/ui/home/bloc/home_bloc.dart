import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/common/error/error.dart';
import '../../../core/home/domain/entities/entities.dart';
import '../../../core/home/domain/usecases/home_usecases.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCase _homeUseCase;
  HomeBloc({required HomeUseCase homeUseCase})
      : _homeUseCase = homeUseCase,
        super(const _Initial()) {
    on<_LoadCatList>(_getCatList);
  }

  Future<void> _getCatList(_LoadCatList event, Emitter<HomeState> emit) async {
    final either = await _homeUseCase.getCatList();
    switch (either) {
      case Left(value: Failure failure):
        emit(state.copyWith(failure: failure));
      case Right(value: List<CatEntity> cat):
        emit(state.copyWith(cat: cat));
    }
  }
}
