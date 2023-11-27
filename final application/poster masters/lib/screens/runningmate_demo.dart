import 'package:flutter/material.dart';

class Running_Demo extends StatefulWidget {
  const Running_Demo({super.key});

  @override
  State<Running_Demo> createState() => _Running_DemoState();
}

class _Running_DemoState extends State<Running_Demo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"러닝메이트 데모",
      home: RunningMate(),
    );
  }
}

class RunningMate extends StatefulWidget {
  const RunningMate({super.key});

  @override
  State<RunningMate> createState() => _RunningMateState();
}

class _RunningMateState extends State<RunningMate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0AEFB8),
        title: 
        Text(
          "봉사활동 정보",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
          ),),
    );
  }
}