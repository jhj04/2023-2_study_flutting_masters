import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final picker = ImagePicker();
  XFile? image;
  List<XFile?> multiImage = [];
  List<XFile> images = [];

  bool iscamera = false, isgallery = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                  image: AssetImage('assets/mypic.png'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print("clicked");
              },
              child: Container(
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.brush),
                        Text("프로필 편집"),
                      ], //만약 카메라, 갤러리 연동할거면 팝업창 구현: "https://velog.io/@tororae/Flutter-AlertDialog-%EB%A5%BC-%ED%99%9C%EC%9A%A9%ED%95%98%EC%97%AC-%ED%8C%9D%EC%97%85%EC%B0%BD-%EB%9D%84%EC%9A%B0%EA%B8%B0"
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 2,
                      margin: const EdgeInsets.only(top: 5),
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
