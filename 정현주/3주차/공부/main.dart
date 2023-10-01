import 'package:flutter/material.dart';

// class Player{
//   String? name;  // ? -> may or may not have name

//   Player({required this.name});   // Player(); 도 가능
// }


// void main() {
//   var hj = Player(name:"potato");

//   runApp(App());

// }





void main() {
  runApp(App());  // runApp은 void
}

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home : Scaffold(
        appBar: AppBar(
          title: Text('hello flutter'),
        ),
        body: Center(
          child: Text ('Hello world'),
          ),
        ),
    );   // Material 구글, Cupertino ios, customize 라도 설정 필요 
  }

}
