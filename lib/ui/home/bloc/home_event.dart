part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.getPokemonList() = _GetPokemonList;
  const factory HomeEvent.getImagePokemon() = _GetImagePokemon;
  const factory HomeEvent.refreshPokemons() = _RefreshPokemons;
}
