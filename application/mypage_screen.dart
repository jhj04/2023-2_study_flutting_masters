import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutting_master_study/screen/profile_screen.dart';
import 'package:flutting_master_study/screen/setting_screen.dart';
import 'package:table_calendar/table_calendar.dart';

class MypageScreen extends StatefulWidget {
  const MypageScreen({super.key});
  @override
  State<MypageScreen> createState() => _MypageScreenState();
}

class _MypageScreenState extends State<MypageScreen> {
  bool clickedBookMark = false,
      clickedShopping = false,
      clickedPeople = false; // 상단 row 버튼이 눌렸는가 아닌가
  bool isBookMark = false; //찜 되었는가 아닌가가
  Widget bookMarkWidget({BuildContext? context, String? photoName}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context!,
            MaterialPageRoute(builder: ((context) => const ProfileScreen())));
      }, //일단 넘길 페이지를 못 받아서 프로필 스크린으로 넘김.
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
        width: 127,
        height: 127,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          image: DecorationImage(
            image: AssetImage('assets/$photoName'),
            fit: BoxFit.cover,
          ),
        ),
        //child: Image.asset("assets/seoul.png"),
      ),
    );
  }

  DateTime selectedDay = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  DateTime focusedDay = DateTime.now();
  Map<DateTime, dynamic> eventSource = {
    DateTime.utc(2023, 11, 25): [
      Event('1번', false),
    ],
    DateTime.utc(2023, 11, 24): [
      Event('2번', false),
      Event('3번', true),
    ],
    DateTime.utc(2023, 11, 26): [
      Event('4번', false),
      Event('5번', true),
    ],
  };
  List<Event> getEventsForDay(DateTime day) {
    return eventSource[day] ?? [];
  }

  var _selectedDay;
  var _focusedDay = DateTime.now();
// final events = LinkedHashMap(
//   equals: isSameDay,
// )..addAll(eventSource);

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
                        child: Column(
                          children: [
                            Row(
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
                                const SizedBox(width: 10),
                                const Text("국민대학교"),
                                const SizedBox(width: 5),
                              ],
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
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 5),
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 3,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const ProfileScreen())));
                          },
                          child: const Text(
                            "소프트웨어학부",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const ProfileScreen())));
                          },
                          child: const Text(
                            "23학번",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const ProfileScreen())));
                          },
                          child: const Text(
                            "서다솜",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            decoration: BoxDecoration(
              color: const Color(0xff0AEFB8),
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
                    setState(() {
                      clickedBookMark = true;
                      clickedPeople = false;
                      clickedShopping = false;
                    });
                  },
                  icon: const Icon(Icons.bookmark),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    print("clicked the Calendar button");
                    setState(() {
                      clickedShopping = true;
                      clickedBookMark = false;
                      clickedPeople = false;
                    });
                  },
                  icon: const Icon(Icons.calendar_today_outlined),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () {
                    print("clicked the people button");
                    setState(() {
                      clickedPeople = true;
                      clickedShopping = false;
                      clickedBookMark = false;
                    });
                  },
                  icon: const Icon(Icons.people),
                ),
              ],
            ),
          ),
          if (clickedBookMark)
            Row(
              children: [
                if (isBookMark) //그리드뷰 사용하기!! 참고 "https://ojlog.tistory.com/3"
                  bookMarkWidget(context: context, photoName: 'dlnew.png'),
                bookMarkWidget(context: context, photoName: 'ktnew.png'),
                bookMarkWidget(context: context, photoName: 'seoul.png'),
              ],
            ),
          if (clickedShopping) //calender
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 500,
                    height: 400,
                    child: TableCalendar(
                      headerStyle: const HeaderStyle(
                        formatButtonVisible: false,
                      ),
                      locale: 'ko_KR',
                      focusedDay: _focusedDay,
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      onDaySelected:
                          (DateTime selectedDay, DateTime focusedDay) {
                        setState(() {
                          _selectedDay = selectedDay;
                          _focusedDay = focusedDay;
                        });
                      },
                      selectedDayPredicate: (DateTime day) {
                        return isSameDay(selectedDay, day);
                      },
                      onPageChanged: (focusedDay) {
                        _focusedDay = focusedDay;
                      },
                      eventLoader: (day) {
                        return getEventsForDay(day);
                      },
                      calendarBuilders: CalendarBuilders(
                        dowBuilder: (context, day) {
                          switch (day.weekday) {
                            case 1:
                              return const Center(child: Text('월'));
                            case 2:
                              return const Center(child: Text('화'));
                            case 3:
                              return const Center(child: Text('수'));
                            case 4:
                              return const Center(child: Text('목'));
                            case 5:
                              return const Center(child: Text('금'));
                            case 6:
                              return const Center(
                                  child: Text(
                                '토',
                                style: TextStyle(color: Colors.blue),
                              ));
                            case 7:
                              return const Center(
                                child: Text('일',
                                    style: TextStyle(color: Colors.red)),
                              );
                          }
                          return null;
                        },
                        todayBuilder: (context, day, _) {
                          return CalendarCellBuilder(context, day, _);
                        },
                      ),
                    ))
              ],
            ),
          if (clickedPeople) //현주 코드 받아와서 글 목록 가져오기
            const Row(
              children: [Text("People Button")],
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
            Icon(Icons.airplay_rounded),
            Icon(Icons.newspaper_outlined),
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }

  Widget CalendarCellBuilder(BuildContext context, DateTime dateTime, _) {
    /*
    do stuff
    */
    return Container(
      padding: const EdgeInsets.all(3),
      child: Container(
        padding: const EdgeInsets.only(top: 3, bottom: 3),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 3),
            borderRadius: const BorderRadius.all(Radius.circular(7)),
            color: Colors.yellow),
        child: Column(
          children: [
            Text(
              dateTime.toUtc().toString(),
              style: const TextStyle(fontSize: 17),
            ),
            const Expanded(child: Text("")),
            Text(
              eventSource[dateTime],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
//   SizedBox CalendarWidget() {
//     return SizedBox(
//       width: 500,
//       height: 400,
//       child: TableCalendar(
//         headerStyle: const HeaderStyle(
//           formatButtonVisible: false,
//         ),
//         locale: 'ko_KR',
//         focusedDay: focusedDay,
//         firstDay: DateTime.utc(2010, 10, 16),
//         lastDay: DateTime.utc(2030, 3, 14),
//         onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
//           setState(() {
//             this.selectedDay = selectedDay;
//             this.focusedDay = focusedDay;
//           });
//         },
//         eventLoader: (day) {
//           return getEventsForDay(day);
//         },
//         calendarBuilders: CalendarBuilders(dowBuilder: (context, day) {
//           switch (day.weekday) {
//             case 1:
//               return const Center(child: Text('월'));
//             case 2:
//               return const Center(child: Text('화'));
//             case 3:
//               return const Center(child: Text('수'));
//             case 4:
//               return const Center(child: Text('목'));
//             case 5:
//               return const Center(child: Text('금'));
//             case 6:
//               return const Center(
//                   child: Text(
//                 '토',
//                 style: TextStyle(color: Colors.blue),
//               ));
//             case 7:
//               return const Center(
//                 child: Text('일', style: TextStyle(color: Colors.red)),
//               );
//           }
//           return null;
//         }),
//       ),
//     );
//   }
// }
}

class Event {
  String title;
  bool complete;
  Event(this.title, this.complete);
  @override
  String toString() => title;
}
