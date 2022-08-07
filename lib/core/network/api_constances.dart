class ApiConstances{
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apikey = 'c3435cfe40aeb079689227d82bf921d3';
  static const String nowPlayingMoviesPath = '$baseUrl/movie/now_playing/?api_key=$apikey';
  static const String popularMoviesPath = '$baseUrl/movie/popular/?api_key=$apikey';
  static const String topRatedMoviesPath = '$baseUrl/movie/top_rated/?api_key=$apikey';
  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static String movieDetailsPath(int movieId) =>
      '$baseUrl/movie/$movieId?api_key=$apikey';

  static String recommendationPath(int movieId) =>
      '$baseUrl/movie/$movieId/recommendations?api_key=$apikey';


  static String imageUrl(String path) => '$baseImageUrl$path';

}
// https://api.themoviedb.org/3/movie/76341?api_key=<<api_key>>