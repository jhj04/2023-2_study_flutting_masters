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
        body: Row(
          children: [
            Expanded(child: Container(color: Colors.blue)),
            Flexible(child: Container(color: Colors.green), flex: 7),
            Container(width: 100, color: Colors.red)
          ],
        ),
      ),
    );
  }
}
