import 'package:flutter/material.dart';
//import 'package:pomodoro/screens/poster.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : "팀원 모집",
      home: TeamMate(),

    );
  }
}

class TeamMate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0AEFB8),
        title: 
        Text(
          "팀원 모집",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
          ),
          leading: Icon(Icons.arrow_back_rounded),
          // 이전 페이지로 넘어가는 함수 필요함.
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              width:400,
              height:200,
              decoration: BoxDecoration(
                color: Color(0xff0AEFB8).withOpacity(0.3),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [        
                  Container(
                    margin: EdgeInsets.all(3),
                    child: Text("포스터 이름",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(3),
                    child: Text("장소 이름",
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("글쓰기"),
                ),
                Container(
                  child: Text("정렬"),
                )
              ],
            ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              width: 500,
              height: 700,
              decoration: BoxDecoration(
                color: Color(0xff0AEFB8).withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ]),
        ),
      );
  }
}

//container클릭 -> teammate_comment.dart -> 댓글 작성