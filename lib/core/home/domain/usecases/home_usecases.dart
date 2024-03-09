import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../common/error/error.dart';
import '../../../common/params/pokemon_info_params.dart';
import '../../../common/params/pokemon_params.dart';
import '../entities/entities.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class HomeUseCase {
  HomeUseCase(this.homeRepository);
  final IHomeRepository homeRepository;

  Future<Either<Failure, List<PokemonEntity>>> getPokemonList(
      PokemonParam params) async {
    return homeRepository.getPokemonList(params);
  }

  Future<Either<Failure, PokemonInfoParam>> getImagePokemon(String name) async {
    return homeRepository.getImagePokemon(name);
  }
  Future<Either<Failure, PokemonEntity>> getPokemonDetail(String name) async {
    return homeRepository.getPokemonDetail(name);
  }
}
