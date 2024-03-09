part of 'models.dart';

class PokemonModel extends PokemonEntity {
  const PokemonModel({
    super.name,
    super.baseExperience,
    super.height,
    super.id,
    super.isDefault,
    super.locationAreaEncounters,
    super.order,
    super.sprites,
    super.weight,
    super.abilities,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        name: json.getString('name'),
        baseExperience: json.getInt('base_experience'),
        height: json.getInt('height'),
        id: json.getInt('id'),
        isDefault: json["is_default"] is int
            ? json["is_default"] == 1
            : json["is_default"],
        locationAreaEncounters: json.getString('location_area_encounters'),
        order: json.getInt('order'),
        weight: json.getInt('weight'),
        sprites: SpriteModel.fromJson(json.getMap('sprites') ?? {}),
        abilities: json
            .getList('abilities')
            ?.map((dynamic ability) =>
                AbilitiesModel.fromJson(ability).toEntitie())
            .toList(),
      );

  @override
  PokemonModel copyWith({
    int? id,
    int? baseExperience,
  }) {
    return PokemonModel(
      id: id ?? this.id,
      baseExperience: baseExperience ?? this.baseExperience,
      name: name,
    );
  }
}

extension PokemonMapper on PokemonModel {
  PokemonEntity toEntitie() {
    return PokemonEntity(
      name: name,
      baseExperience: baseExperience,
      height: height,
      id: id,
      isDefault: isDefault,
      locationAreaEncounters: locationAreaEncounters,
      order: order,
      sprites: sprites,
      weight: weight,
      abilities: abilities,
    );
  }
}
