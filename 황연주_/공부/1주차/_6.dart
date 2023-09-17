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
        appBar: AppBar( leading: Icon(Icons.star), title: Text("앱임") ,  //actions : [Icon(Icons.star), Icon(Icons.star)]
          //title: 왼쪽 제목 leading:왼쪽 아이콘 actions:[우측 아이콘들]
        ),
        body: SizedBox(
          child: TextButton( child: Text('글자'),
            onPressed: (){}, //TextButton(), IconButton(), ElevatedButton()  ->버튼
          ),
        ),
      ),
    );
  }
}
