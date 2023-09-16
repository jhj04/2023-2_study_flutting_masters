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
