part of 'entities.dart';

class Movie extends Equatable {
  const Movie({
    this.id,
    this.youtubeId,
    this.posterPath,
    this.title,
    this.runTime,
    this.voteAverage,
    this.overview,
    this.release,
    this.url,
    this.productionCompanies,
    this.genRes,
  });

  final num? id;
  final String? youtubeId;
  final String? posterPath;
  final String? title;
  final num? runTime;
  final double? voteAverage;
  final String? overview;
  final DateTime? release;
  final String? url;
  final List<ProductionCompanies>? productionCompanies;
  final List<GenRes>? genRes;

  factory Movie.empty() {
    return const Movie(id: 0);
  }

  Movie copyWith({
    num? id,
    String? youtubeId,
    String? posterPath,
    String? title,
    num? runTime,
    double? voteAverage,
    String? overview,
    DateTime? release,
    String? url,
    List<ProductionCompanies>? productionCompanies,
    List<GenRes>? genRes,
  }) =>
      Movie(
        id: id ?? this.id,
        youtubeId: youtubeId ?? this.youtubeId,
        posterPath: posterPath ?? this.posterPath,
        title: title ?? this.title,
        runTime: runTime ?? this.runTime,
        voteAverage: voteAverage ?? this.voteAverage,
        overview: overview ?? this.overview,
        release: release ?? this.release,
        url: url ?? this.url,
        productionCompanies: productionCompanies ?? this.productionCompanies,
        genRes: genRes ?? this.genRes,
      );

  @override
  List<Object?> get props => [id];
}
