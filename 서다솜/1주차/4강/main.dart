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
          title: Row(
            children: [
              Text("금호동 3가",
                style: TextStyle(color: Colors.black, ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down), color: Colors.black,)
            ],
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search), color: Colors.black,),
            IconButton(onPressed: (){}, icon: Icon(Icons.menu), color: Colors.black),
            IconButton(onPressed: (){}, icon: Icon(Icons.add_alert_sharp), color: Colors.black)
          ],
          backgroundColor: Colors.white,


        ),
        body:Align(
          alignment: Alignment.topLeft,
            child: Container(
              height: 100,
              color: Colors.white,
              child: Row(
                children: [
                  Row(

                    children: [
                      SizedBox(width: 100, height: 100,child: Image.asset("camera.jpg"),  ),
                    ],
                  ),
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(onPressed: (){}, child: Text("캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함)", textAlign: TextAlign.left, style: TextStyle(color: Colors.black, fontSize: 18))),
                          Text("성동구 행당동 끌올 10분전", style: TextStyle(color: Colors.grey, fontSize: 12), textAlign: TextAlign.left,),
                          Text("210,000원", textAlign: TextAlign.left),
                        ],
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.heart_broken, color: Colors.grey,),
                            Text("4",style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
        //height: 50,
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.contact_page)
            ],
          ),
        ),)
        ),
        //

    );
  }
}
