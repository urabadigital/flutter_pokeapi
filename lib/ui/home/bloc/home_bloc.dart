import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/common/error/error.dart';
import '../../../core/common/params/pokemon_params.dart';
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
    on<_GetPokemonList>(_getPokemonList);
    on<_GetImagePokemon>(_getImagePokemon);
    on<_RefreshPokemons>(_refreshPokemons);
    on<_Search>(_search);
  }

  late ScrollController scrollController;
  int limit = 20;
  int offset = 0;

  Future<void> refreshList() async {
    add(const _RefreshPokemons());
  }

  Future<void> _refreshPokemons(
      _RefreshPokemons event, Emitter<HomeState> emit) async {
    emit(state.copyWith(pokemons: []));
    add(const _GetPokemonList());
  }

  void initScrollController() {
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
              scrollController.position.maxScrollExtent &&
          !state.isLoading) {
        add(const _GetPokemonList());
      }
    });
  }

  Future<void> _getPokemonList(
      _GetPokemonList event, Emitter<HomeState> emit) async {
    offset++;
    emit(state.copyWith(isLoading: true));
    final either = await _homeUseCase
        .getPokemonList(PokemonParam(limit: limit, offset: offset));
    switch (either) {
      case Left(value: Failure failure):
        emit(state.copyWith(failure: failure, isLoading: false));
      case Right(value: List<PokemonEntity> pokemons):
        List<PokemonEntity> pokemonList = state.pokemons.toList();
        pokemonList.addAll(pokemons);
        emit(state.copyWith(
          pokemons: pokemonList,
          isLoading: false,
          oldPoke: pokemonList,
        ));
      // add(const _GetImagePokemon());
    }
  }

  Future<void> _getImagePokemon(
      _GetImagePokemon event, Emitter<HomeState> emit) async {
    List<PokemonEntity> pokemons = [];
    int count = 0;

    final notImage = state.pokemons.where((element) => element.id == null);
    for (var element in notImage) {
      count++;
      debugPrint('$count: ${element.name}');
      emit(state.copyWith(isLoadingImage: true));
      if (element.name != null || (element.name?.isNotEmpty ?? false)) {
        final either = await _homeUseCase.getImagePokemon(element.name ?? '');
        either.fold(
          (failure) =>
              emit(state.copyWith(failure: failure, isLoadingImage: false)),
          (info) {
            final edit = element.copyWith(
              id: info.id,
              baseExperience: info.baseExperience,
            );
            pokemons.add(edit);

            emit(state.copyWith(
              pokemons: pokemons,
              isLoadingImage: false,
              oldPoke: pokemons,
            ));
          },
        );
      } else {
        final empty = element.copyWith(id: 0, baseExperience: 0);
        pokemons.add(empty);
        emit(state.copyWith(
          pokemons: pokemons,
          isLoadingImage: false,
          oldPoke: pokemons,
        ));
      }
    }
  }

  Future<void> _search(_Search event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));

    if (event.search == '') {
      emit(state.copyWith(
        pokemons: state.oldPoke,
        isLoading: false,
      ));
    } else {
      final filter = state.pokemons
          .where((element) =>
              element.name!.toLowerCase().contains(event.search!.toLowerCase()))
          .toList();
      emit(state.copyWith(pokemons: filter, isLoading: false));
    }
  }
}
