import 'package:flutter/material.dart';
//import 'dart:ui' as ui;

void main() {
  runApp(
    MaterialApp(
      home: Search(),
    ),
  );
}

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Search> {
  TextEditingController _searchController = TextEditingController();
  List<String> _suggestions = [
    '스터디',
    '공모전',
    '동아리',
  ];
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
                          ),
                        ),
                      );
                    },
                  ),
                )
              : SizedBox(),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[200],
              child: Text(
                '바디',
              ),
            ),
          ),
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
  }
}