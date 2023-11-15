import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '앱 이름 뭐로 하나요', //폰에서 위젯 등 하는 거
      home: Mainpage(), //home은 앱이 실행될 때 가장 먼저 보여주는 페이지
    );
  }
}

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const TextButton(onPressed: () {
            
          },
          "어플리케이션 이름"
          ),
          centerTitle: true,
          // 앱바 메인 이름 텍스트 -> 클릭시 업데이트
          leading: IconButton(
            onPressed: () {
              Navigator.popUntil(
                context,
              );
            },
            color: Colors.blueAccent,
            icon: const Icon(Icons.menu_book_rounded),
          ),
          //왼쪽 앱바 아이콘
        ), // 앱바
        body: Container(
          // width: double.infinity,
          // height: double.infinity,
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/Kimmiimyo.jpg',
                  width: 150,
                ),
              ),
              const Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '마감임박러닝메이트',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      //컨테이너 넣기
                      Text(
                        '마감기한 임박,
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Icon(Icons.person)], //아이콘 여러개
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
