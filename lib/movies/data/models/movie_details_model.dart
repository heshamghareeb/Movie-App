import 'package:movies_app/movies/data/models/genres_model.dart';
import 'package:movies_app/movies/domain/entities/movie_detail.dart';

class MovieDetailsModel extends MovieDetailEntities {
  const MovieDetailsModel({
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.genres,
    required super.overview,
    required super.releaseDate,
    required super.runtime,
    required super.voteAverage,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
        id: json['id'],
        title: json['title'],
        backdropPath: json['backdrop_path'] ,
        genres: List<GenresModel>.from(json['genres'].map((x)=> GenresModel.fromJson(x))),
        overview: json['overview'],
        releaseDate: json['release_date'],
        runtime: json['runtime'],
        voteAverage: json['vote_average'].toDouble(),
      );
}
