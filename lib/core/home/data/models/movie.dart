import '../../domain/entities/entities.dart';

class MovieModel extends Movie {
  const MovieModel({
    super.id,
    super.title,
    super.posterPath,
    super.voteAverage,
    super.release,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json['id'],
        title: json['title'],
        posterPath: json['poster_path'],
        voteAverage: json['vote_average'].toDouble(),
        release: DateTime.parse(json['release_date']),
      );
}

extension MovieMapper on MovieModel {
  Movie toEntitie() {
    return Movie(
      id: id,
      title: title,
      posterPath: posterPath,
      voteAverage: voteAverage,
      release: release,
    );
  }
}
