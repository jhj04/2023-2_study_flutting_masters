//import 'dart:html';
import 'package:pomodoro/screens/mypage_screen.dart';
import 'package:pomodoro/screens/poster.dart';
//import 'package:pomodoro/screens/poster.dart';
import 'package:pomodoro/screens/runningmate_demo.dart';
import 'package:pomodoro/screens/search.dart';
import 'package:flutter/material.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 4, // 그림자
        backgroundColor: Colors.white, //앱 바 배경색
        title: const Row(
          children: [
            AppBarLogo(),
            SizedBox(width: 10),
            AppBarTitle(),
          ],
        ),
      ), // 앱바
      body: const Column(
        children: [
          BodyContainerWithTitle('마감 임박 러닝메이트'),
          SizedBox(width: 10),
          BodyContainerWithTitle('마감 기한 임박'),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: (){
                  // 페이지 이동 : 러닝메이트
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => 러닝메이트파일클래스이름()),
                  // );
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Running_Demo())) ;
                },
                icon: Icon(Icons.directions_run),
              ),
              IconButton(
                onPressed: (){
                  // 페이지 이동 : 검색
                  //  Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => 검색색파일클래스이름()),
                  // );
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Search()));

                },
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: (){
                  // 페이지 이동 : 마이페이지
                  //  Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => 마이페이지파일클래스이름()),
                  // );
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MypageScreen()));
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

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
// 클릭 시 해당 화면 새로 고침
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/images/1.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextButton(
      onPressed: null, //클릭시 해당 화면 새로고침
      child: Text(
        'Poster Masters',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class BodyContainerWithTitle extends StatelessWidget {
  final String title;

  const BodyContainerWithTitle(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 11, 213, 180),
              backgroundColor: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Expanded(
                child: ImageRow(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//이미지 박스 동적 생성
class ImageRow extends StatelessWidget {
  const ImageRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: PageView.builder(
        itemCount: 3, // 전체 이미지 개수
        itemBuilder: (context, index) {
          return ImageBox(index);
        },
      ),
    );
  }
}

//각 이미지 박스
class ImageBox extends StatelessWidget {
  final int index;

  const ImageBox(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));

      },
      child: Container(
        width: 150,
        margin: const EdgeInsets.all(8),
        color: Colors.blue,
        child: Center(
          child: Text(
            'Image $index',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}