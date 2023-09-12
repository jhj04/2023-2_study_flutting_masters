import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // runApp() : 앱 시작
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp( //main 페이지 //MaterialApp -> 커스터마이징 할때
      home: Scaffold(
        appBar: AppBar(
          title: Text("앱임"),
        ),
        body: Text("안녕"),
        bottomNavigationBar: BottomAppBar(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.contact_page)
            ],
          ),)
    ) ,
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center, //main축으로 정렬
        //   //crossAxisAlignment: CrossAxisAlignment.center, //main이 아닌 축 정렬
        //   children: [
        //     Icon(Icons.star),
        //     Icon(Icons.star),
        //     Icon(Icons.star),
        //     Icon(Icons.star),]
        //
        // ),

      //)
      // Center(
      //   child: Container(width: 50,height: 50, color: Colors.blue),
      // )
        //Image.asset('assets/pic.jpg')
        //Center(): 내 자식 위젯의 기준점을 중앙으로 설정
        //SizedBox()
        //Text('안녕') //text 위젯
        // Icon(Icons.star) icon 위젯
        // Image.asset('[경로]') image 위젯
    );
  }
}
