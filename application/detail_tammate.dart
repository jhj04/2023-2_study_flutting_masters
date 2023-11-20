import 'package:flutter/material.dart';
// import 'package:pomodoro/screens/detail_tammate.dart';
// import 'package:pomodoro/screens/teammate_write.dart';
// import 'package:pomodoro/screens/poster.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : "팀원 모집",
      home: Detail_TeamMate(),

    );
  }
}

class Detail_TeamMate extends StatefulWidget {
  @override
  State<Detail_TeamMate> createState() => _Detail_TeamMateState();
}

class _Detail_TeamMateState extends State<Detail_TeamMate> {
  
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController _textEditingController = TextEditingController();
  //FocusNode _focusNode = FocusNode();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0AEFB8),
        title: 
        Text(
          "팀원 모집",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
          ),
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon : Icon(Icons.arrow_back_rounded),),
          // 이전 페이지로 넘어가는 함수 필요함.
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xff0AEFB8).withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "팀원 모집합니다!!!!! 급구!!!!!!",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black,
                      ),),
                        SizedBox(
                          height: 5,
                          ),
                          Text(
                            """00000 구합니다!!
                              
                              
                              
                              
                            """,
                          style: TextStyle(
                              //fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],),
                    ),
                    Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              width: 500,
              height: 700,
              decoration: BoxDecoration(
                color: Color(0xff0AEFB8).withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Column(
                  children: [
                    Form(
                      key: _key,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: TextFormField(
                          controller: _textEditingController,
                          maxLines: 5,
                          decoration: InputDecoration(
                            contentPadding : const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              gapPadding: 10),
                          ),
                          onChanged: (String? value) {
                            print('onChange : $value');
                          },
                          onSaved: (String? value) {
                            print('onSave : ${value}');
                          },
                          onTap: () => print('onTap'),

                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "빈칸";
                            }
                            return null;
                          },
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() == true) {
                    _key.currentState?.save();
                  }
                },
                child: Text('save',
                style: TextStyle(color: Colors.black),),
              ),
              ElevatedButton(
                onPressed: () {
                  _key.currentState?.reset();
                },
                child: Text('reset',
                style: TextStyle(
                  color: Colors.black,
                ),),
              ),
              ],),],
            ),
          ),
        ),
        ],
      ),
    ),
  );
}
}
