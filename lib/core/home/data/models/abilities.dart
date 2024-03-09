part of 'models.dart';

class AbilitiesModel extends AbilitiesEntity {
  const AbilitiesModel({
    super.ability,
    super.isHidden,
    super.slot,
  });

  factory AbilitiesModel.fromJson(Map<String, dynamic> json) => AbilitiesModel(
        ability: Ability.fromJson(json['ability']),
        isHidden: json['is_hidden'],
        slot: json['slot'],
      );
}

extension AbilitiesMapper on AbilitiesModel {
  AbilitiesEntity toEntitie() {
    return AbilitiesEntity(
      ability: ability,
      isHidden: isHidden,
      slot: slot,
    );
  }
}
