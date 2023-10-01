import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State <App> createState() =>  AppState();
}

class  AppState extends State <App> {
  int counter = 0;

  void onClick() {
    setState(() {
       counter +=1 ;
    });


  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfff4eddb),
        body : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Click Count",
              style: TextStyle(
                fontSize: 30,
              ),),

              Text('$counter',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            IconButton(onPressed: onClick, icon: Icon(Icons.add_box_rounded)),
            ],
          ),
          ),
      )
    );
  }
}
