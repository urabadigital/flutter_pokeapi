
import '../../domain/entities/entities.dart';

class DetailModel extends Movie {
  const DetailModel({
    super.id,
    super.youtubeId,
    super.title,
    super.runTime,
    super.posterPath,
    super.voteAverage,
    super.overview,
    super.release,
    super.url,
    super.productionCompanies,
    super.genRes,
  });

  factory DetailModel.fromJson(Map<String, dynamic> json) => DetailModel(
        id: json['id'],
        youtubeId: json['youtube_id'],
        title: json['title'],
        runTime: json['runtime'],
        posterPath: json['poster_path'],
        voteAverage: json['vote_average'],
        overview: json['overview'],
        release: DateTime.parse(json['release_date']),
        url: json['homepage'],
        productionCompanies: List<ProductionCompanies>.from(
          json['production_companies']
              .map((x) => ProductionCompanies.fromJson(x)),
        ),
        genRes:
            List<GenRes>.from(json['genres'].map((x) => GenRes.fromJson(x))),
      );
}

extension DetailMapper on DetailModel {
  Movie toEntitie() {
    return Movie(
      id: id,
      youtubeId: youtubeId,
      title: title,
      runTime: runTime,
      posterPath: posterPath,
      voteAverage: voteAverage,
      overview: overview,
      release: release,
      url: url,
      productionCompanies: productionCompanies,
      genRes: genRes,
    );
  }
}
