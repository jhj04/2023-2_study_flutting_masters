```dart
import 'package:flutter/material.dart';
import 'package:pomodoro/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Color.fromARGB(244, 85, 8, 209),
        textTheme: const TextTheme(
          headline1:TextStyle(
            color: Color.fromARGB(255, 30, 26, 17),
          ),
        ),
        cardColor : const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}
```
영상의 코드 대로 치되, 색상의 약간의 변화를 주었습니다.
