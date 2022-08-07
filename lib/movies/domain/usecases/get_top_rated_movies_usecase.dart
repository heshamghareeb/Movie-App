import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';
import '../../../core/usecase/base_use_case.dart';
import '../entities/movie.dart';

class GetTopRatedMoviesUseCase extends BaseUseCase<List<MovieEntities>, NoParameters>{
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<MovieEntities> >> call(NoParameters parameters) async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}
