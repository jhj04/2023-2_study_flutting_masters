```
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
        appBar: AppBar(title: Text('6강 과제 입니다.')),
        bottomNavigationBar: BottomAppBar(
          child: bottomn()
        ),
        body: ListView(
          //controller: , // 스크롤바, 메모리 절약, 스크롤 위치 감시 기능
          children: [
            name(),
            name(),
            name(),
          ],
      ),
      )
    );
  }
}

class bottomn extends StatelessWidget {
  const bottomn({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.call),
            Icon(Icons.message),
            Icon(Icons.people),
          ],
        ),
      );
  }
}

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Row(
          children: [
            Icon(Icons.people_alt_rounded, size: 30, ), Text('  홍길동', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))
          ],
        );
  }
}
```


리스트뷰와 함께, 커스텀 위젯을 사용하는 것에 익숙해질 수 있도록 하는 과제였습니다.

처음에는 리스트뷰의 구현에 있어서 세 줄을 정렬하는 방법을 찾아내는 것에 시간이 소요되기도 하였으나, 커스텀 위젯을 이용하여 해결해낼 수 있었습니다.

커스텀 위젯을 통하여 기능을 따로 구현하니 조금 더 알아보기 편리한 것 같다는 생각을 하게 되었습니다. 또한, 리스트뷰와 커스텀 위젯 모두 많이 사용될 기능들이라는 생각을 하게 되었습니다.
