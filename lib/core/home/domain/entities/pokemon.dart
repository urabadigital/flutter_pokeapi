part of 'entities.dart';

class PokemonEntity extends Equatable {
  const PokemonEntity({
    this.name,
    this.baseExperience,
    this.height,
    this.id,
    this.isDefault,
    this.locationAreaEncounters,
    this.order,
    this.weight,
    this.sprites,
    this.abilities,
  });

  final String? name;
  final int? baseExperience;
  final int? height;
  final int? id;
  final bool? isDefault;
  final String? locationAreaEncounters;
  final int? order;
  final int? weight;
  final Sprite? sprites;
  final List<AbilitiesEntity>? abilities;

  bool get isNull => id == null || id == 0;

  factory PokemonEntity.empty() => const PokemonEntity();

  PokemonEntity copyWith({
    int? id,
    int? baseExperience,
  }) {
    return PokemonEntity(
      id: id ?? this.id,
      baseExperience: baseExperience ?? this.baseExperience,
      name: name,
    );
  }

  @override
  List<Object?> get props => [
        baseExperience,
        height,
        id,
        isDefault,
        locationAreaEncounters,
        name,
        order,
        weight,
        sprites,
        abilities,
      ];
}
