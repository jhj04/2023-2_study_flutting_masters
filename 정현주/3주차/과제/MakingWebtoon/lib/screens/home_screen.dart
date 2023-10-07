import 'package:flutter/material.dart';
import 'package:webtoonflix/models/webtoon_model.dart';
import 'package:webtoonflix/services/api_service.dart';
import 'package:webtoonflix/widgets/webtoon_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 5,  // 음영
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: Text("오늘의 웹툰",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),),
      ),
      body: FutureBuilder(   //**  snapshot 은 상태
        future : webtoons,
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            return Column(
              children: [
                SizedBox(height: 50,
                ),
                Expanded(child: makeList(snapshot))
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: snapshot.data!.length,
            padding:EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            itemBuilder: (context, index) {
              var webtoon = snapshot.data![index];
              return Webtoon(title: webtoon.title, thumb: webtoon.thumb, id: webtoon.id,);
            },
            separatorBuilder:(context, index) => const SizedBox(width:40),
          );
  }
}


// 리스트뷰는 최적화되지 않음.