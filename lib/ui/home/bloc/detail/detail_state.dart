part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    @Default(false) bool isLoading,
    Failure? failure,
    required PokemonEntity pokemon,
  }) = _Initial;

  factory DetailState.initial() => DetailState(
    pokemon: PokemonEntity.empty()
  );
}
