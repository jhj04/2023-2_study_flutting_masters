//4강 숙제
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
        appBar: AppBar( title: Text("금호동3가") , actions: [Icon(Icons.search), Icon(Icons.person)],
        ),
        body: Container(
          // width: double.infinity,
          // height: double.infinity,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Image.asset('assets/Kimmiimyo.jpg', width: 150,),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('이건 무슨 상품일까', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text('금호동-끌올 10분전',style: TextStyle(color: Colors.grey),),
                      Text('17000원'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.favorite),
                          Text('4')
                        ], //아이콘이랑 글자
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
