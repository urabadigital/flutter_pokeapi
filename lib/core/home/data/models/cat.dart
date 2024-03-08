import '../../domain/entities/entities.dart';

class CatModel extends CatEntity {
  const CatModel({
    super.id,
    super.name,
  });

  factory CatModel.fromJson(Map<String, dynamic> json) => CatModel(
        id: json['id'],
        name: json['name'],
      );
}

extension CastMapper on CatModel {
  CatEntity toEntitie() {
    return CatEntity(
      id: id,
      name: name,
    );
  }
}
