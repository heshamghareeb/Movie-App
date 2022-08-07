import 'package:dartz/dartz.dart';
import 'package:movies_app/movies/domain/entities/recommendation.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_recommendation_usecase.dart';
import '../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../entities/movie_detail.dart';

abstract class BaseMoviesRepository {

  Future<Either<Failure, List<MovieEntities> >> getNowPlayingMovies();

  Future<Either<Failure, List<MovieEntities> >> getPopularMovies();

  Future<Either<Failure, List<MovieEntities> >> getTopRatedMovies();

  Future<Either<Failure, MovieDetailEntities >> getMovieDetails(MovieDetailsParameters parameters);

  Future<Either<Failure, List<Recommendation> >> getRecommendation(RecommendationParameters parameters);
}
