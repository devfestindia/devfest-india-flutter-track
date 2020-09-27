import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_web/services/api_service.dart';
import 'package:tmdb_web/services/repository.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

final faker = Faker();
final repo = Repository(APIService());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Movie Database(TMDB)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff032541),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
