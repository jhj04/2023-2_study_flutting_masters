//import 'dart:html';

import 'package:flutter/material.dart';
import 'mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Poster Master',
      home: Mainpage(), //home은 앱이 실행될 때 가장 먼저 보여주는 페이지
    );
  }
}