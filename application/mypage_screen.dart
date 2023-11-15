import 'package:flutter/material.dart';
import 'package:flutting_master_study/screen/profile_screen.dart';
import 'package:flutting_master_study/screen/setting_screen.dart';

class MypageScreen extends StatelessWidget {
  const MypageScreen({super.key});

  Widget bookMarkWidget() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      width: 127,
      height: 127,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        image: const DecorationImage(
            image: AssetImage('assets/seoul_moive.jpg'), fit: BoxFit.cover),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 350, height: 25),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const ProfileScreen())));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                          image: AssetImage('assets/mypic.png'))),
                  width: 120,
                  height: 120,
                ),
              ),
              const SizedBox(width: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black.withAlpha(100)),
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 5),
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 3,
                              )
                            ]),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/kookmin_univ.png'))),
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text("국민대학교"),
                            const SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black.withAlpha(100)),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 5),
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 3,
                              )
                            ]),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const SettingScreen())));
                          },
                          icon: const Icon(Icons.settings),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black.withAlpha(100),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    print("clicked the bookmark button");
                  },
                  icon: const Icon(Icons.bookmark),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    print("clicked the shopping_bag button");
                  },
                  icon: const Icon(Icons.shopping_bag),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    print("clicked the people button");
                  },
                  icon: const Icon(Icons.people),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                width: 127,
                height: 127,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  image: const DecorationImage(
                      image: AssetImage('assets/seoul_moive.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                width: 127,
                height: 123,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                width: 127,
                height: 123,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
              ),
            ],
          ),
        ],
      ),
      bottomSheet: Container(
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
}
