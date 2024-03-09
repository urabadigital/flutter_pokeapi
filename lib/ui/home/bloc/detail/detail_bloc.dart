import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:evolvers/core/home/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:evolvers/core/home/domain/usecases/home_usecases.dart';

import '../../../../core/common/error/error.dart';

part 'detail_event.dart';
part 'detail_state.dart';
part 'detail_bloc.freezed.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final HomeUseCase _homeUseCase;
  DetailBloc({required HomeUseCase homeUseCase})
      : _homeUseCase = homeUseCase,
        super(DetailState.initial()) {
    on<_Detail>(_getDetail);
  }

  Future<void> _getDetail(_Detail event, Emitter<DetailState> emit) async {
    emit(state.copyWith(isLoading: true));

    final either = await _homeUseCase.getPokemonDetail(event.name);
    switch (either) {
      case Left(value: Failure failure):
        emit(state.copyWith(failure: failure, isLoading: false));
      case Right(value: PokemonEntity pokemon):
        emit(state.copyWith(pokemon: pokemon, isLoading: false));
    }
  }
}
