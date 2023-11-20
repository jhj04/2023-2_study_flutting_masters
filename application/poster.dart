import 'package:flutter/material.dart';
import 'package:pomodoro/screens/teammate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "봉사활동 정보",
      home: MyHomePage(), //앱이 정상적으로 실행되었을 때 가장 먼저 화면에 보여지는 경로
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

bool isBookmarked = false;

// onBookmarkPressed(){
//   setState(){
//     isBookmarked = !isBookmarked;
//   }
// }

class _MyHomePageState extends State<MyHomePage> {
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
          leading: 
          IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon : Icon(Icons.arrow_back_rounded),),
      ),
      body: SingleChildScrollView(
        child: Center(
          // child 자식 위젯
          child: Column(
            // Column() 자신의 위젯내의 모든 요소들을 세로로 위치한다
            children: [
              Container(
                width: 500,
                height: 680,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/poster1.png')),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 30, 15),
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  
                  children: [
          
                    IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TeamMate()));
                          },
                          icon: Icon(
                            Icons.people_alt_rounded,
                            size: 50,
                            ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                    IconButton(
                      onPressed: () {
                        //onBookmarkPressed(),
                        setState(() {
                          isBookmarked = !isBookmarked;
                        });
                      },
                      //onBookmarkPressed,
                      icon: Icon(
                        isBookmarked ? Icons.bookmark : 
                        Icons.bookmark_border_rounded,
                        size: 50,
                        ),
                        ),
                      ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.all(8.0),
                width: 450,
                height: 1500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff0AEFB8).withOpacity(0.1),
                  
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("신영문화재단 건축문화상 포스터 디자인 공모전", // name
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(""" [2023년 신영문화재단 건축문화상 제1회 포스터 디자인 공모전 개최 안내]

총 상금 500만원!

신영문화재단 건축문화상 사업의 창의적인 아이디어로 포스터 디자이너를 찾습니다!

 

■ 모집기간: 2023.04.03~04.20 

 

■ 모집대상: 포토샵, 일러스트 등 디자인 툴을 활용한 포스터 제작이 가능한 자

 

■ 응모내용: 신영문화재단 건축문화상 사업 내용과 취지에 맞는 Identity가 반영된 디자인

 

■ 제출서류:  참가신청서, 동의서 각 1부  (홈페이지에서 양식 다운)

 

■ 접수방법: 모집기간에 이메일접수 (scf@shinyoung21.com)

*자세한 접수 방법 및 상세 내용은 공고문 확인

 

■ 포스터 공모전 양식 or 공고문 확인:

https://www.shinyoungfoundation.org/bbs/board.php?bo_table=3_1&wr_id=41

 

■ 시상내역

- 대 상(1) : 상금 300만원

- 최우수상(1) : 150만원

- 우수상(1) : 50만원

 

■ 문의 : T: 02-723-0770/0771, Email: scf@shinyoung21.com

※ 자세한 내용은 첨부 파일 확인

(신영문화재단​ 건축문화상 제1회 포스터 디자인 공고문)""", 
                    // info
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
