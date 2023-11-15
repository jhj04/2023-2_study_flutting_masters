import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 예시로 버튼 값이 저장되는 변수
  int buttonValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 버튼 값이 1이면 이미지를 표시
            if (buttonValue == 1) Image.asset('assets/image.png'),

            // 버튼
            ElevatedButton(
              onPressed: () {
                // 버튼을 누를 때마다 값 변경
                setState(() {
                  buttonValue = buttonValue == 1 ? 0 : 1;
                });
              },
              child: Text('Toggle Image'),
            ),
          ],
        ),
      ),
    );
  }
}
