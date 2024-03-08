import '../../domain/entities/entities.dart';

class GenResModel extends GenRes {
  const GenResModel({
    super.id,
    super.name,
  });

  factory GenResModel.fromJson(Map<String, dynamic> json) => GenResModel(
        id: json['id'],
        name: json['name'],
      );
}

extension GenresMapper on GenResModel {
  GenRes toEntitie() {
    return GenRes(
      id: id,
      name: name,
    );
  }
}
