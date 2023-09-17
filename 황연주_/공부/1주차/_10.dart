import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: ListView(  //스크롤바 생김, 메모리 절약기능
            // controller: ,  //유저가 얼만큼 스크롤했는지 알 수 있음.
            children: [
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
              Text('안녕'),
            ],
          )
      ),
    );
  }
}
