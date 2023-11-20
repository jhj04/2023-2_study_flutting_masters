import 'package:flutter/material.dart';
import 'package:pomodoro/screens/detail_tammate.dart';
import 'package:pomodoro/screens/teammate_write.dart';
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
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon : Icon(Icons.arrow_back_rounded),),
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
                    child: Text("신영문화재단 건축문화상 포스터 디자인 공모전",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(margin: EdgeInsets.all(3),
                        child: Text("주관", // 주최 기관 혹은 장소
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        margin: EdgeInsets.all(3),
                        child: Text("신영문화재단", // 주최 기관 혹은 장소
                        style: TextStyle(
                          fontSize: 15,
                        ),),
                      ),
                    ],
                  ),
                  Container(
                        margin: EdgeInsets.all(3),
                        child: Text(""" 신영문화재단 건축문화상 사업의 창의적인 아이디어로 포스터 디자이너를 찾습니다!

                        ■ 모집기간: 2023.04.03~04.20 """, //
                        style: TextStyle(
                          fontSize: 15,
                        ),),
                      ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              width: 500,
              height: 700,
              decoration: BoxDecoration(
                color: Color(0xff0AEFB8).withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child:Column(
                children: [
                  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        // Container(
                        //   padding:EdgeInsets.symmetric(horizontal: 1.0),
                        // ),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TeamMate_write()));

                        }, 
                        child:  Text("글쓰기",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),),),
                        // Container(
                        //   padding:EdgeInsets.symmetric(horizontal: 5.0),  
                        // ),
                        TextButton(
                            onPressed: (){
                            
                          },
                          child: Text("정렬",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Detail_TeamMate()));

                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      width: 500,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xff0AEFB8).withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              "팀원 모집합니다!!!!! 급구!!!!!!",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.black,
                            ),),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              """00000 구합니다!!
                              
                              
                              
                              
                              """,
                            style: TextStyle(
                              //fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.black,
                            ),),
                      ],),
                    ),
                  ),
                ],),
            ),
          ]),
        ),
      );
  }
}

//container클릭 -> teammate_comment.dart -> 댓글 작성
