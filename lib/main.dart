import 'package:flutter/material.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/presentation/screens/movies_screen.dart';
import 'core/services/services_locator.dart';
import 'movies/data/datasource/movie_remote_data_source.dart';


void main() async{
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey.shade800,
      ),
      home: const MoviesScreen(),
    );
  }
}
