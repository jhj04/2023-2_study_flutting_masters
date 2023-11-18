import 'dart:html';

import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  _Mainpage createState() => _Mainpage();
}

class _Mainpage extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 4, // 그림자
        backgroundColor: Colors.white, //앱 바 배경색
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                // shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage('assets/우리 로고 이미지.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                // 클릭시 해당 화면 새로 고침
                setState(() {});
              },
              child: const Text('앱의 제목'),
            ),
          ],
        ),
      ), // 앱바
      body: Container(),
      bottomNavigationBar: const BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  // 페이지 이동 : 러닝메이트
                },
                icon: Icon(Icons.directions_run),
              ),
              IconButton(
                onPressed: () {
                  // 페이지 이동 : 검색
                },
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {
                  // 페이지 이동 : 마이페이지
                },
                icon: Icon(Icons.person_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
