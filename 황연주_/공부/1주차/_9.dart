import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: ShopItem()
      ),
    );
  }
}


//레이아웃용 위젯이 길면 한 단어로 커스텀위젯으로 깔끔하게 축약 가능
//class 작명, return 옆에 축약할 레이아웃 넣기
//아무거나 다 커스텀 위젯화 X, 나중에 관리하기 더 힘들어질 수도 있음
//커스텀 위젯화 -> 재사용 많은 UI들, 큰 페이지들
class ShopItem extends StatelessWidget {
  const ShopItem({super.key});

  @override  //이 다음 코드 먼저 적용해달라는 뜻
  build(context) {
    return SizedBox(
      child: Text('안녕'),
    );
  }
}


//변수, 함수로도 축약 가능
//변하지 않는 UI는 가능
