import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSetting = false,
      isFAQ = false,
      isEvaluation = false,
      isPersonal = false,
      isVersion = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SizedBox(
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              SettingButtonList(name: "환경 설정"),
              SettingButtonList(name: "FAQ"),
              SettingButtonList(name: "앱 평가"),
              SettingButtonList(name: "개인정보 및 약관"),
              SettingButtonList(name: "버전 정보"),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.calendar_month_outlined),
            Icon(Icons.newspaper_outlined),
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }

  SizedBox SettingButtonList({String? name}) {
    return SizedBox(
      height: 50,
      width: 400,
      child: TextButton(
        style: TextButton.styleFrom(
            padding: const EdgeInsets.only(right: 60, left: 5),
            side: const BorderSide(
              width: 1,
              color: Colors.black,
            )),
        onPressed: () {
          if (isSetting) {
            print("$name");
          } else if (isFAQ) {
            print("$name");
          } else if (isEvaluation) {
            print("$name");
          } else if (isPersonal) {
            print("$name");
          } else if (isVersion) {
            print("$name");
          }
        },
        child: Text(
          "$name",
          style: const TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
