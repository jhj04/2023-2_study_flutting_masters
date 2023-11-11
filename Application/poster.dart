import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // onHeartTap() async {
  //   final likedToons = prefs.getStringList
  //   ('likedToons'); 
  //   if(likedToons != null) {
  //     if(isLiked){
  //       likedToons.remove(widget.id);
  //     } else {
  //       likedToons.add(widget.id);
  //     }
  //     await prefs.setStringList('likeToons', likedToons);
  //     setState(() {
  //       isLiked = !isLiked;
  //     });
  //   }
  // }



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "봉사활동 정보",
      // theme: ThemeData(
      //     // 앱의 기본적인 기본 테마를 지정하는 것
      //     primarySwatch:
      //         Colors.green, // Swatch는 견본을 의미함, 즉 특정 색의 음영들을 기본 색상으로 지정해서 사용한다는 의미
      //     ),
      home: MyHomePage(), //앱이 정상적으로 실행되었을 때 가장 먼저 화면에 보여지는 경로
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 다양한 요소들을 배치하도록 도와주는 빈 도화지
      appBar: AppBar(
        backgroundColor: Color(0xff0AEFB8),
        title: 
        Text(
          "봉사활동 정보",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
          ),
          leading: Icon(Icons.arrow_back_rounded),
      ),
      body: SingleChildScrollView(
        child: Center(
          // child 자식 위젯
          child: Column(
            // Column() 자신의 위젯내의 모든 요소들을 세로로 위치한다
            children: [
              Container(
                width: 500,
                height: 700,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/poster1.png')),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 30, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.people_outline_rounded,
                      size: 50,),
                    Icon(
                      Icons.bookmark_outline_outlined,
                      size: 50,
                      ),
                      // actions : [
                      //   IconButton(
                      //     onPressed: onHeartTap, 
                      //     icon: Icon(
                      //       isLiked ? Icons.favorite_outline :
                      //       Icons.favorite_outline,
                      //     ),
                      //   ),
                      // ],
                    ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.all(8.0),
                width: 450,
                height: 700,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff0AEFB8).withOpacity(0.1),
                  
                ),
                //color: Color.fromARGB(205, 172, 213, 125),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("신영문화재단 건축문화상 포스터 디자인 공모전",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                    Text("상세정보입니다.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                    ),
                  ],
                ),
              ),
            ], // [] 안에 세로로 정렬할 위젯들 나열
          ),
        ),
      ),
    );
  }
}