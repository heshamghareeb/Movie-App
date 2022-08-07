import 'package:equatable/equatable.dart';

import 'genres.dart';

class MovieDetailEntities extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final String overview;
  final String releaseDate;
  final int runtime;
  final double voteAverage;
  final List<Genres> genres;

  const MovieDetailEntities({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.genres,
    required this.overview,
    required this.releaseDate,
    required this.runtime,
    required this.voteAverage,
  });

  @override
  List<Object> get props =>
      [
        id,
        title,
        backdropPath,
        genres,
        overview,
        releaseDate,
        runtime,
        voteAverage,
      ];
}
