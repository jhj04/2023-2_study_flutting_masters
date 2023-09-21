//6강 숙제

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
        body: ListView(
          children: [
            Row(
              children: [
                Icon(Icons.person, size: 40,),
                SizedBox(width: 10,),
                Text('홍길동', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              children: [
                Icon(Icons.person, size: 40,),
                SizedBox(width: 10,),
                Text('홍길동', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              children: [
                Icon(Icons.person, size: 40,),
                SizedBox(width: 10,),
                Text('홍길동', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ],
            ),
          ],
        ),
        bottomNavigationBar: CallBottomAppBar(),
      ),
    );
  }
}

class CallBottomAppBar extends StatelessWidget {
  const CallBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.call),
          Icon(Icons.message),
          Icon(Icons.contact_page),
        ],
      ),
    );
  }
}
