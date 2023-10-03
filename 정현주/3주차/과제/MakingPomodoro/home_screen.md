```dart
import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  static const twentyFiveMinutes = 1500;
  int totalSeconds = twentyFiveMinutes;
  bool isRunning = false;
  int totalPorodoro = 0;
  late Timer timer;

  void onTick(Timer timer){
    if(totalSeconds == 0) {
      setState(() {
        totalPorodoro = totalPorodoro +1;
        isRunning = false;
        totalSeconds = twentyFiveMinutes;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds = totalSeconds -1;
      });
    }
  }

  void onStartPressed(){
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
      );

    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed(){
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void onResetPressed(){
    setState(() {
      totalSeconds = twentyFiveMinutes;
    });
  }

// 타이머 초기화

  String format(int seconds){
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first.substring(2,7);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          Flexible (
            flex: 1,
            child: Container(     //ui 배율에 기반한
            alignment: Alignment.bottomCenter,
              child: Text(
                format(totalSeconds),
              style: TextStyle(
                color: Theme.of(context).cardColor,
                fontSize: 89,
                fontWeight: FontWeight.w600,
              ),
              ),
            ),
          ), 
          Flexible (
            flex: 1,
              child: Center(
                child:IconButton(
                  iconSize: 120,
                  color: Theme.of(context).cardColor,
                  onPressed: isRunning? onPausePressed : onStartPressed,
                  icon: Icon(isRunning 
                  ? Icons.pause_circle_outline_sharp
                  : Icons.play_circle_outline),
                  ),
            ),
          ),
          Flexible (
            flex: 1,
              child: Center(
                child:IconButton(
                  iconSize: 120,
                  color: Theme.of(context).cardColor,
                  onPressed: onResetPressed ,
                  icon: Icon(Icons.restore_sharp),
                  ),
            ),
          ),
          Flexible (
            flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container( 
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Theme.of(context).cardColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Pomodoro',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).textTheme.headline1 !.color),
                            ),
                          Text(
                            '$totalPorodoro',
                            style: TextStyle(
                            fontSize: 58,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).textTheme.headline1 !.color),
                          ),
                  
                      ],),    //ui 배율에 기반한
                              ),
                  ),
                ],
              ),
          ), 
        ],
      ),
    );
  }
}
```

재생 및 정지 버튼 + 리셋 버튼을 구현했습니다.
