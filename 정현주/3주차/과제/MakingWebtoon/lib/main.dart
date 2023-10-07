import 'package:flutter/material.dart';
import 'package:webtoonflix/screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //위젯에는 식별자 역할의 key가 있다. (id 처럼 쓰임.)

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(

      ),
    );
  }
}