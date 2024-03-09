import 'package:either_dart/either.dart';

import '../../../common/error/error.dart';
import '../../../common/params/pokemon_info_params.dart';
import '../../../common/params/pokemon_params.dart';
import '../entities/entities.dart';

abstract class IHomeRepository {
  Future<Either<Failure, List<PokemonEntity>>> getPokemonList(
      PokemonParam params);

  Future<Either<Failure, PokemonInfoParam>> getImagePokemon(String name);
  Future<Either<Failure, PokemonEntity>> getPokemonDetail(String name);
}
