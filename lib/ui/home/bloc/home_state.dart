part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    Failure? failure,
    @Default([]) List<CatEntity> cat,
  }) = _Initial;
}
