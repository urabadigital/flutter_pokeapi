part of 'entities.dart';

class AbilitiesEntity extends Equatable {
  const AbilitiesEntity({
    this.ability,
    this.isHidden,
    this.slot,
  });

  final Ability? ability;
  final bool? isHidden;
  final int? slot;

  @override
  List<Object?> get props => [
        ability,
        isHidden,
        slot,
      ];
}

class Ability extends Equatable {
  const Ability({
    this.name,
    this.url,
  });
  final String? name;
  final String? url;

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        name: json['name'],
        url: json['url'],
      );

  @override
  List<Object?> get props => [
        name,
        url,
      ];
}
