import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _searchController = TextEditingController();
  List<String> _suggestions = [
    '스터디',
    '공모전',
    '동아리',
    '채용',
    '모집',
    '행사',
  ];

  final Map<String, List<String>> _imageMap = {
    '채용': [
      'assets/post/DL.jpg',
      'assets/post/KT.jpg',
    ],
    '모집': [
      'assets/post/SYNC.jpg',
      'assets/post/UST.jpg',
      'assets/post/dongdaemoon.jpg',
      'assets/post/ontact.jpg',
      'assets/post/oonhang.jpg',
      'assets/post/daehakonejungsi.jpg',
      'assets/post/filatess.jpg',
      'assets/post/hangong.jpg',
    ],
    '행사': [
      'assets/post/globaldream.jpg',
      'assets/post/deeprunning.jpg',
      'assets/post/seoulmovie.jpg',
      'assets/post/seouleurope.jpg',
      'assets/post/europedesign.jpg',
      'assets/post/europedreamers.jpg',
      'assets/post/europefashion.jpg',
      'assets/post/gyungi.jpg',
      'assets/post/jinroroadmap.jpg',
      'assets/post/changuie.jpg',
      'assets/post/arapstartup.jpg',
    ],
  };

  List<String> _searchResults = [];
  int _selectedItemIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.black12,
              ),
              SizedBox(
                width: 8,
              ),
              Flexible(
                flex: 1,
                child: TextField(
                  controller: _searchController,
                  onChanged: (value) {
                    // 필요한 경우 검색 결과 업데이트
                    updateSearchResults(value);
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    hintText: '검색 키워드를 입력해주세요',
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              TextButton(
                onPressed: () {
                  // 검색 버튼을 클릭했을 때 검색 결과 업데이트
                  updateSearchResults(_searchController.text);
                },
                child: Text('검색'),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          _searchResults.isNotEmpty
              ? Expanded(
                  child: ListView.builder(
                    itemCount: _searchResults.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // 자동완성된 글자를 클릭하면 해당 글자를 검색창에 입력하고 검색 수행
                          setState(() {
                            _selectedItemIndex = index;
                          });
                          _searchController.text = _searchResults[index];
                          updateSearchResults(_searchController.text);
                        },
                        child: Container(
                          color: _selectedItemIndex == index
                              ? Colors.grey.withOpacity(0.3)
                              : Colors.transparent,
                          child: ListTile(
                            title: Text(_searchResults[index]),
                            subtitle: _imageMap?[_searchResults[index]] != null
                                ? Column(
                                    children: _imageMap![_searchResults[index]]!
                                      .map((imagePath) => Padding(
                                        padding: EdgeInsets.only(right: 8),
                                        child: Image.asset(
                                          imagePath,
                                          height: 900, // 이미지 크기 조절을 위해 필요한 경우 수정
                                          width: 600,  // 이미지 크기 조절을 위해 필요한 경우 수정
                                        ),
                                      ))
                                      .toList(),
                                  )
                                : SizedBox(),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }

  void updateSearchResults(String query) {
    // 필요에 따라 검색 결과를 업데이트
    setState(() {
      _selectedItemIndex = -1; // 검색 결과가 업데이트될 때 선택된 아이템을 초기화
      _searchResults = _suggestions
          .where((element) => element.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });

    // '채용', '모집', '행사' 중 하나만을 포함하도록 필터링
    if (_searchResults.isNotEmpty) {
      _searchResults.removeWhere((result) =>
          !['채용', '모집', '행사'].contains(result.toLowerCase()));
    }
  }
}