import 'dart:developer';

import 'package:either_dart/either.dart';
import 'package:evolvers/core/home/data/models/models.dart';
import 'package:evolvers/core/home/domain/entities/entities.dart';
import 'package:injectable/injectable.dart';

import '../../../common/error/error.dart';
import '../../../common/params/pokemon_info_params.dart';
import '../../../common/params/pokemon_params.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_datasources.dart';

@Injectable(as: IHomeRepository)
class HomeRepositoryImpl implements IHomeRepository {
  HomeRepositoryImpl(this.homeDatasource);
  final IHomeDatasource homeDatasource;

  @override
  Future<Either<Failure, List<PokemonEntity>>> getPokemonList(
      PokemonParam params) async {
    try {
      final List<PokemonModel> pokemons =
          await homeDatasource.getPokemonList(params);
      final List<PokemonEntity> list =
          pokemons.map((e) => e.toEntitie()).toList();
      return Right(list);
    } on BaseClientException catch (e) {
      log(e.toString());
      if (e.type == 'SocketException') {
        return const Left(NetworkFailure());
      }
      if (e.type == 'TimeoutException') {
        return const Left(TimeOutFailure());
      }
      if (e.type == 'UnAuthorization') {
        return const Left(AuthFailure());
      }
      return const Left(AnotherFailure());
    } catch (e) {
      log(e.toString());
      return const Left(AnotherFailure());
    }
  }

  @override
  Future<Either<Failure, PokemonInfoParam>> getImagePokemon(String name) async {
    try {
      final PokemonInfoParam data = await homeDatasource.getImagePokemon(name);
      return Right(data);
    } on BaseClientException catch (e) {
      log(e.toString());
      if (e.type == 'SocketException') {
        return const Left(NetworkFailure());
      }
      if (e.type == 'TimeoutException') {
        return const Left(TimeOutFailure());
      }
      if (e.type == 'UnAuthorization') {
        return const Left(AuthFailure());
      }
      return const Left(AnotherFailure());
    } catch (e) {
      log(e.toString());
      return const Left(AnotherFailure());
    }
  }

  @override
  Future<Either<Failure, PokemonEntity>> getPokemonDetail(String name) async {
    try {
      final PokemonModel pokemon = await homeDatasource.getPokemonDetail(name);
      return Right(pokemon.toEntitie());
    } on BaseClientException catch (e) {
      log(e.toString());
      if (e.type == 'SocketException') {
        return const Left(NetworkFailure());
      }
      if (e.type == 'TimeoutException') {
        return const Left(TimeOutFailure());
      }
      if (e.type == 'UnAuthorization') {
        return const Left(AuthFailure());
      }
      return const Left(AnotherFailure());
    } catch (e) {
      log(e.toString());
      return const Left(AnotherFailure());
    }
  }
}
