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
      home:Scaffold(
        appBar: AppBar(
          title: Text( '금호동 3가'),
          leading: Icon(Icons.arrow_back),
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: (){
                  print('icon is clicked');
                },
            ),
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: (){
                  print("menu is clicked");
                },
            ),
            IconButton(
              icon : Icon(Icons.message),
              onPressed: (){
                print("alarm");
              },
            ),
        ],
      ),
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          //alignment: Alignment.topLeft,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('canon.jpg',width: 250),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  width: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text('캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함)', style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 20)),
                    Text('성동구 행당동 . 끌올 10분 전'),
                    Text('210,000원', style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 15)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite_border),
                        Text('4'),
                      ],
                    )
                  ],
                )
              )
            ],
          )
        )
          )
      );
  }
}
```

이전에 학습했던 내용들을 종합적으로 모두 이해하고 조합하여 해결해야 하는 문제라고 생각됩니다.

Icon 삽입에서 끝나지 않고, actions, IconButton을 이용하여 삽입하고 누른 버튼에 따라 터미널에 프린트를 해주는 기능까지 추가해보았습니다.

padding에서 어색한 부분이 있어 EdgeInsets.fromLTRB를 이용하여 정렬해주었으며, style:TextStyle 을 통해 폰트 사이즈, 굵기 등을 설정해보았습니다.

과제를 수행하며 이전보다 많은 코드와 기능이 포함됨을 볼 수 있었으며, 후에 Icons.favorite_border에서, 클릭할 시, Icons.favorite으로 아이콘이 변화하는 기능도 추가해보고 싶다는 생각이 들었습니다.

이번에 수행했던 과제들 중 가장 뿌듯함이 느껴졌던 과제라고 할 수 있으며, 앞으로의 application 개발 스터디 활동이 기대되었습니다.
