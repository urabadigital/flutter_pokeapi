part of 'entities.dart';

class ProductionCompanies {
  const ProductionCompanies({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  final num? id;
  final String? logoPath;
  final String? name;
  final String? originCountry;

  factory ProductionCompanies.fromJson(Map<String, dynamic> json) =>
      ProductionCompanies(
        id: json['id'],
        logoPath: json['logo_path'],
        name: json['name'],
        originCountry: json['origin_country'],
      );
}
