import 'package:flutter/material.dart';
//import 'package:pomodoro/screens/detail_tammate.dart';
//import 'package:pomodoro/screens/poster.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : "팀원 모집 글쓰기",
      home: TeamMate_write(),

    );
  }
}

class TeamMate_write extends StatefulWidget {
  @override
  State<TeamMate_write> createState() => _TeamMate_writeState();
}

class _TeamMate_writeState extends State<TeamMate_write> {

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
          "팀원 모집 글쓰기",
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
              width:400,
              height:200,
              decoration: BoxDecoration(
                color: Color(0xff0AEFB8).withOpacity(0.3),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [        
                  Container(
                    margin: EdgeInsets.all(3),
                    child: Text("신영문화재단 건축문화상 포스터 디자인 공모전",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(margin: EdgeInsets.all(3),
                        child: Text("주관", // 주최 기관 혹은 장소
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        margin: EdgeInsets.all(3),
                        child: Text("신영문화재단", // 주최 기관 혹은 장소
                        style: TextStyle(
                          fontSize: 15,
                        ),),
                      ),
                    ],
                  ),
                  Container(
                        margin: EdgeInsets.all(3),
                        child: Text("상세 정보", //
                        style: TextStyle(
                          fontSize: 15,
                        ),),
                      ),
                ],
              ),
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
                          maxLines: 20,
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

//container클릭 -> teammate_comment.dart -> 댓글 작성