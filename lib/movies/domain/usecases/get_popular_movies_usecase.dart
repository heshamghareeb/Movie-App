import 'package:dartz/dartz.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';
import '../../../core/error/failure.dart';
import '../../../core/usecase/base_use_case.dart';
import '../entities/movie.dart';

class GetPopularMoviesUseCase extends BaseUseCase<List<MovieEntities>, NoParameters>{
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<MovieEntities> >> call(NoParameters parameters) async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
