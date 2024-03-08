part of 'entities.dart';

class GenRes {
  const GenRes({
    this.id,
    this.name,
  });

  final num? id;
  final String? name;

  factory GenRes.fromJson(Map<String, dynamic> json) =>
      GenRes(
        id: json['id'],
        name: json['name'],
      );
}
