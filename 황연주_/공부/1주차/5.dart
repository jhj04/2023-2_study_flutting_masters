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
        appBar: AppBar( title: Text("앱임") ,
        ),
        body: SizedBox(
          child: Text('안녕하세요',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Color(0xffaaaaaa),  // 색 주는 법 -> 1.Colors.칼라명, 2.Color(0xffaaaaaa), 3.color.fromRGBO()

            ),
          ),
        ),
      ),
    );
  }
}
