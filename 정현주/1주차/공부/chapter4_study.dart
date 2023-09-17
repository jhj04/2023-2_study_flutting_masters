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
        appBar: AppBar( title: Text('app') ),
        body:Align(
          alignment:Alignment.center,
          child: Container(
            width: 150, height: 50, color:Colors.blue, // double.infinity 는 화면 width에 박스 가로로 꽉차
          //width: 50, height: 50, // 데코레이션, 컨테이너 색상 중복 설정 불가
          //margin: EdgeInsets.all(50), //padding 은 글을 쓸 때의 여백 / EdgeInsets.fromLTRB(left, top, right, bottom) 은 개별적인 설정
          //decoration: BoxDecoration(
            //border: Border.all(color: Colors.black)
          ),
        ),
      ),
    );
  }
}
