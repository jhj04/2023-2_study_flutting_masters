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
        appBar: AppBar(
          title: Text("금호동3가"),
          actions: [
            Icon(Icons.search),
            Icon(Icons.menu),
            Icon(Icons.person),
          ],
        ),
        body: Container(
          // width: double.infinity,
          // height: double.infinity,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset('assets/Kimmiimyo.jpg', width: 150,),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('이건 무슨 상품일까', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text('금호동-끌올 10분전',style: TextStyle(color: Colors.grey),),
                      Text('₩ 17,000', style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold,),),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(Icons.favorite_border),
                            iconSize: 24, //아이콘 크기 기본값 24
                            onPressed: (){
                              // 아이콘 클릭 시 상태를 변경하여 아이콘 모양 변경
                              // 아이콘 모양을 변경하려면 해당 아이콘을 변수로 저장하고, onPressed에서 변수를 변경
                              Icon favorteIcon = Icon(Icons.favorite);
                            },
                          ),
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
