import 'package:evolvers/core/common/utils/extension/extension.dart';
import 'package:injectable/injectable.dart';
import 'package:evolvers/core/common/utils/extension/http.dart';

import '../../../common/params/pokemon_info_params.dart';
import '../../../common/params/pokemon_params.dart';
import '../../../common/services/services.dart';
import '../end_points.dart';
import '../models/models.dart';

abstract class IHomeDatasource {
  Future<List<PokemonModel>> getPokemonList(PokemonParam params);
  Future<PokemonInfoParam> getImagePokemon(String name);
  Future<PokemonModel> getPokemonDetail(String name);
}

@Injectable(as: IHomeDatasource)
class HomeDatasource implements IHomeDatasource {
  HomeDatasource({
    required this.baseClient,
  });

  final BaseClient baseClient;

  @override
  Future<List<PokemonModel>> getPokemonList(param) async {
    Map<String, dynamic> params = {
      'limit': param.limit,
      'offset': (param.offset - 1) * 20,
    };
    try {
      List<PokemonModel> pokemons = (await baseClient.get(
        path: EndPoint.pokemon + params.queryParams,
      ))!
          .withListConverterFromKey<PokemonModel>(
        'results',
        callback: PokemonModel.fromJson,
      );
      final List<PokemonModel> pokemonList = [];

      for (var element in pokemons) {
        final info = await getImagePokemon(element.name ?? '');
        final edit = element.copyWith(
          id: info.id,
          baseExperience: info.baseExperience,
        );
        pokemonList.add(edit);
      }

      return pokemonList;
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<PokemonInfoParam> getImagePokemon(String name) async {
    try {
      PokemonModel response = (await baseClient.get(
        path: EndPoint.pokemonDetail.toParamUrl(<String, String>{
          'name': name,
        })!,
      ))!
          .withConverter<PokemonModel>(
        callback: PokemonModel.fromJson,
      );
      return PokemonInfoParam(
        id: response.id ?? 0,
        baseExperience: response.baseExperience,
      );
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<PokemonModel> getPokemonDetail(String name) async {
    try {
      return (await baseClient.get(
        path: EndPoint.pokemonDetail.toParamUrl(<String, String>{
          'name': name,
        })!,
      ))!
          .withConverter<PokemonModel>(
        callback: PokemonModel.fromJson,
      );
    } on Exception catch (_) {
      rethrow;
    }
  }
}
