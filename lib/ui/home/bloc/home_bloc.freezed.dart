// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? search) search,
    required TResult Function() getPokemonList,
    required TResult Function() getImagePokemon,
    required TResult Function() refreshPokemons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? search)? search,
    TResult? Function()? getPokemonList,
    TResult? Function()? getImagePokemon,
    TResult? Function()? refreshPokemons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? search)? search,
    TResult Function()? getPokemonList,
    TResult Function()? getImagePokemon,
    TResult Function()? refreshPokemons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_GetPokemonList value) getPokemonList,
    required TResult Function(_GetImagePokemon value) getImagePokemon,
    required TResult Function(_RefreshPokemons value) refreshPokemons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_GetPokemonList value)? getPokemonList,
    TResult? Function(_GetImagePokemon value)? getImagePokemon,
    TResult? Function(_RefreshPokemons value)? refreshPokemons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_GetPokemonList value)? getPokemonList,
    TResult Function(_GetImagePokemon value)? getImagePokemon,
    TResult Function(_RefreshPokemons value)? refreshPokemons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? search) search,
    required TResult Function() getPokemonList,
    required TResult Function() getImagePokemon,
    required TResult Function() refreshPokemons,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? search)? search,
    TResult? Function()? getPokemonList,
    TResult? Function()? getImagePokemon,
    TResult? Function()? refreshPokemons,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? search)? search,
    TResult Function()? getPokemonList,
    TResult Function()? getImagePokemon,
    TResult Function()? refreshPokemons,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_GetPokemonList value) getPokemonList,
    required TResult Function(_GetImagePokemon value) getImagePokemon,
    required TResult Function(_RefreshPokemons value) refreshPokemons,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_GetPokemonList value)? getPokemonList,
    TResult? Function(_GetImagePokemon value)? getImagePokemon,
    TResult? Function(_RefreshPokemons value)? refreshPokemons,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_GetPokemonList value)? getPokemonList,
    TResult Function(_GetImagePokemon value)? getImagePokemon,
    TResult Function(_RefreshPokemons value)? refreshPokemons,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? search});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_$SearchImpl(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl({this.search});

  @override
  final String? search;

  @override
  String toString() {
    return 'HomeEvent.search(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? search) search,
    required TResult Function() getPokemonList,
    required TResult Function() getImagePokemon,
    required TResult Function() refreshPokemons,
  }) {
    return search(this.search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? search)? search,
    TResult? Function()? getPokemonList,
    TResult? Function()? getImagePokemon,
    TResult? Function()? refreshPokemons,
  }) {
    return search?.call(this.search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? search)? search,
    TResult Function()? getPokemonList,
    TResult Function()? getImagePokemon,
    TResult Function()? refreshPokemons,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this.search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_GetPokemonList value) getPokemonList,
    required TResult Function(_GetImagePokemon value) getImagePokemon,
    required TResult Function(_RefreshPokemons value) refreshPokemons,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_GetPokemonList value)? getPokemonList,
    TResult? Function(_GetImagePokemon value)? getImagePokemon,
    TResult? Function(_RefreshPokemons value)? refreshPokemons,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_GetPokemonList value)? getPokemonList,
    TResult Function(_GetImagePokemon value)? getImagePokemon,
    TResult Function(_RefreshPokemons value)? refreshPokemons,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements HomeEvent {
  const factory _Search({final String? search}) = _$SearchImpl;

  String? get search;
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPokemonListImplCopyWith<$Res> {
  factory _$$GetPokemonListImplCopyWith(_$GetPokemonListImpl value,
          $Res Function(_$GetPokemonListImpl) then) =
      __$$GetPokemonListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPokemonListImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetPokemonListImpl>
    implements _$$GetPokemonListImplCopyWith<$Res> {
  __$$GetPokemonListImplCopyWithImpl(
      _$GetPokemonListImpl _value, $Res Function(_$GetPokemonListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPokemonListImpl implements _GetPokemonList {
  const _$GetPokemonListImpl();

  @override
  String toString() {
    return 'HomeEvent.getPokemonList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPokemonListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? search) search,
    required TResult Function() getPokemonList,
    required TResult Function() getImagePokemon,
    required TResult Function() refreshPokemons,
  }) {
    return getPokemonList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? search)? search,
    TResult? Function()? getPokemonList,
    TResult? Function()? getImagePokemon,
    TResult? Function()? refreshPokemons,
  }) {
    return getPokemonList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? search)? search,
    TResult Function()? getPokemonList,
    TResult Function()? getImagePokemon,
    TResult Function()? refreshPokemons,
    required TResult orElse(),
  }) {
    if (getPokemonList != null) {
      return getPokemonList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_GetPokemonList value) getPokemonList,
    required TResult Function(_GetImagePokemon value) getImagePokemon,
    required TResult Function(_RefreshPokemons value) refreshPokemons,
  }) {
    return getPokemonList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_GetPokemonList value)? getPokemonList,
    TResult? Function(_GetImagePokemon value)? getImagePokemon,
    TResult? Function(_RefreshPokemons value)? refreshPokemons,
  }) {
    return getPokemonList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_GetPokemonList value)? getPokemonList,
    TResult Function(_GetImagePokemon value)? getImagePokemon,
    TResult Function(_RefreshPokemons value)? refreshPokemons,
    required TResult orElse(),
  }) {
    if (getPokemonList != null) {
      return getPokemonList(this);
    }
    return orElse();
  }
}

abstract class _GetPokemonList implements HomeEvent {
  const factory _GetPokemonList() = _$GetPokemonListImpl;
}

/// @nodoc
abstract class _$$GetImagePokemonImplCopyWith<$Res> {
  factory _$$GetImagePokemonImplCopyWith(_$GetImagePokemonImpl value,
          $Res Function(_$GetImagePokemonImpl) then) =
      __$$GetImagePokemonImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetImagePokemonImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetImagePokemonImpl>
    implements _$$GetImagePokemonImplCopyWith<$Res> {
  __$$GetImagePokemonImplCopyWithImpl(
      _$GetImagePokemonImpl _value, $Res Function(_$GetImagePokemonImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetImagePokemonImpl implements _GetImagePokemon {
  const _$GetImagePokemonImpl();

  @override
  String toString() {
    return 'HomeEvent.getImagePokemon()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetImagePokemonImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? search) search,
    required TResult Function() getPokemonList,
    required TResult Function() getImagePokemon,
    required TResult Function() refreshPokemons,
  }) {
    return getImagePokemon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? search)? search,
    TResult? Function()? getPokemonList,
    TResult? Function()? getImagePokemon,
    TResult? Function()? refreshPokemons,
  }) {
    return getImagePokemon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? search)? search,
    TResult Function()? getPokemonList,
    TResult Function()? getImagePokemon,
    TResult Function()? refreshPokemons,
    required TResult orElse(),
  }) {
    if (getImagePokemon != null) {
      return getImagePokemon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_GetPokemonList value) getPokemonList,
    required TResult Function(_GetImagePokemon value) getImagePokemon,
    required TResult Function(_RefreshPokemons value) refreshPokemons,
  }) {
    return getImagePokemon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_GetPokemonList value)? getPokemonList,
    TResult? Function(_GetImagePokemon value)? getImagePokemon,
    TResult? Function(_RefreshPokemons value)? refreshPokemons,
  }) {
    return getImagePokemon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_GetPokemonList value)? getPokemonList,
    TResult Function(_GetImagePokemon value)? getImagePokemon,
    TResult Function(_RefreshPokemons value)? refreshPokemons,
    required TResult orElse(),
  }) {
    if (getImagePokemon != null) {
      return getImagePokemon(this);
    }
    return orElse();
  }
}

abstract class _GetImagePokemon implements HomeEvent {
  const factory _GetImagePokemon() = _$GetImagePokemonImpl;
}

/// @nodoc
abstract class _$$RefreshPokemonsImplCopyWith<$Res> {
  factory _$$RefreshPokemonsImplCopyWith(_$RefreshPokemonsImpl value,
          $Res Function(_$RefreshPokemonsImpl) then) =
      __$$RefreshPokemonsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshPokemonsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$RefreshPokemonsImpl>
    implements _$$RefreshPokemonsImplCopyWith<$Res> {
  __$$RefreshPokemonsImplCopyWithImpl(
      _$RefreshPokemonsImpl _value, $Res Function(_$RefreshPokemonsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshPokemonsImpl implements _RefreshPokemons {
  const _$RefreshPokemonsImpl();

  @override
  String toString() {
    return 'HomeEvent.refreshPokemons()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshPokemonsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? search) search,
    required TResult Function() getPokemonList,
    required TResult Function() getImagePokemon,
    required TResult Function() refreshPokemons,
  }) {
    return refreshPokemons();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? search)? search,
    TResult? Function()? getPokemonList,
    TResult? Function()? getImagePokemon,
    TResult? Function()? refreshPokemons,
  }) {
    return refreshPokemons?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? search)? search,
    TResult Function()? getPokemonList,
    TResult Function()? getImagePokemon,
    TResult Function()? refreshPokemons,
    required TResult orElse(),
  }) {
    if (refreshPokemons != null) {
      return refreshPokemons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_GetPokemonList value) getPokemonList,
    required TResult Function(_GetImagePokemon value) getImagePokemon,
    required TResult Function(_RefreshPokemons value) refreshPokemons,
  }) {
    return refreshPokemons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_GetPokemonList value)? getPokemonList,
    TResult? Function(_GetImagePokemon value)? getImagePokemon,
    TResult? Function(_RefreshPokemons value)? refreshPokemons,
  }) {
    return refreshPokemons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_GetPokemonList value)? getPokemonList,
    TResult Function(_GetImagePokemon value)? getImagePokemon,
    TResult Function(_RefreshPokemons value)? refreshPokemons,
    required TResult orElse(),
  }) {
    if (refreshPokemons != null) {
      return refreshPokemons(this);
    }
    return orElse();
  }
}

abstract class _RefreshPokemons implements HomeEvent {
  const factory _RefreshPokemons() = _$RefreshPokemonsImpl;
}

/// @nodoc
mixin _$HomeState {
  Failure? get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingImage => throw _privateConstructorUsedError;
  List<PokemonEntity> get pokemons => throw _privateConstructorUsedError;
  List<PokemonEntity> get oldPoke => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Failure? failure,
      bool isLoading,
      bool isLoadingImage,
      List<PokemonEntity> pokemons,
      List<PokemonEntity> oldPoke});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isLoadingImage = null,
    Object? pokemons = null,
    Object? oldPoke = null,
  }) {
    return _then(_value.copyWith(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingImage: null == isLoadingImage
          ? _value.isLoadingImage
          : isLoadingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      pokemons: null == pokemons
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntity>,
      oldPoke: null == oldPoke
          ? _value.oldPoke
          : oldPoke // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Failure? failure,
      bool isLoading,
      bool isLoadingImage,
      List<PokemonEntity> pokemons,
      List<PokemonEntity> oldPoke});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isLoadingImage = null,
    Object? pokemons = null,
    Object? oldPoke = null,
  }) {
    return _then(_$InitialImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingImage: null == isLoadingImage
          ? _value.isLoadingImage
          : isLoadingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      pokemons: null == pokemons
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntity>,
      oldPoke: null == oldPoke
          ? _value._oldPoke
          : oldPoke // ignore: cast_nullable_to_non_nullable
              as List<PokemonEntity>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.failure,
      this.isLoading = false,
      this.isLoadingImage = false,
      final List<PokemonEntity> pokemons = const [],
      final List<PokemonEntity> oldPoke = const []})
      : _pokemons = pokemons,
        _oldPoke = oldPoke;

  @override
  final Failure? failure;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingImage;
  final List<PokemonEntity> _pokemons;
  @override
  @JsonKey()
  List<PokemonEntity> get pokemons {
    if (_pokemons is EqualUnmodifiableListView) return _pokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  final List<PokemonEntity> _oldPoke;
  @override
  @JsonKey()
  List<PokemonEntity> get oldPoke {
    if (_oldPoke is EqualUnmodifiableListView) return _oldPoke;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldPoke);
  }

  @override
  String toString() {
    return 'HomeState(failure: $failure, isLoading: $isLoading, isLoadingImage: $isLoadingImage, pokemons: $pokemons, oldPoke: $oldPoke)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingImage, isLoadingImage) ||
                other.isLoadingImage == isLoadingImage) &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons) &&
            const DeepCollectionEquality().equals(other._oldPoke, _oldPoke));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      failure,
      isLoading,
      isLoadingImage,
      const DeepCollectionEquality().hash(_pokemons),
      const DeepCollectionEquality().hash(_oldPoke));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {final Failure? failure,
      final bool isLoading,
      final bool isLoadingImage,
      final List<PokemonEntity> pokemons,
      final List<PokemonEntity> oldPoke}) = _$InitialImpl;

  @override
  Failure? get failure;
  @override
  bool get isLoading;
  @override
  bool get isLoadingImage;
  @override
  List<PokemonEntity> get pokemons;
  @override
  List<PokemonEntity> get oldPoke;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
