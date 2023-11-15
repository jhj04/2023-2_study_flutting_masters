import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: TextField(),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('검색'),
          ),
        ],
      ),
      body: Text(
        '바디',
      ),
    );
  }
}
