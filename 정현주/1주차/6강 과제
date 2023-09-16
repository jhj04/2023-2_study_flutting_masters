import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('6강 과제 입니다.')),
        bottomNavigationBar: BottomAppBar(
          child: bottomn()
        ),
        body: ListView(
          //controller: , // 스크롤바, 메모리 절약, 스크롤 위치 감시 기능
          children: [
            name(),
            name(),
            name(),
          ],
      ),
      )
    );
  }
}

class bottomn extends StatelessWidget {
  const bottomn({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.call),
            Icon(Icons.message),
            Icon(Icons.people),
          ],
        ),
      );
  }
}

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Row(
          children: [
            Icon(Icons.people_alt_rounded, size: 30, ), Text('  홍길동', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))
          ],
        );
  }
}
