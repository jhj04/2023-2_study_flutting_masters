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
        appBar: AppBar( title: Text("s") ,
        ),
        body: Container(
          width: 150,
          height: 50,
          color: Colors.blue,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),  //Container에서 사용가능
          child: Text('안녕'),
        ),

      ),
    );
  }
}
