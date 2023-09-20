'''
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
'''
'''
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home : Scaffold(
        appBar: AppBar ( title :Text('Application 실습 제작 과제')),
        body: Text('안녕'),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 70,
            child: Row(
                mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                children:[
                  Icon(Icons.phone),
                  Icon(Icons.message),
                  Icon(Icons.contact_page),
                ],
            ),
          ),
        ),
      )
    );
  }
}
'''

# 1 강에서의 학습 내용을 바탕으로 특히, bottomNavigationBar 구현이 메인으로 되어있는 과제라고 생각되었습니다.
# 초기 bottomNavigationBar을 설정했을 때, bar의 높이가 너무 낮아 부자연스럽고 어색한 모습이었기 때문에 bar의 높이를 70으로 높여 설정해주었으며,
#  세 개의 아이콘이 세로로 일정한 간격으로 정렬될 수 있도록 MainAxisAlignment.spaceEvenly를 사용해주었습니다.
