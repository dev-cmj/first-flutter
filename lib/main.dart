import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('base App'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white, // 배경색 설정
          type: BottomNavigationBarType.fixed, // 아이템 수가 많을 경우 사용
          selectedItemColor: Colors.blue, // 선택된 아이템 색상
          unselectedItemColor: Colors.grey, // 선택되지 않은 아이템 색상
          selectedFontSize: 14, // 선택된 아이템 폰트 크기
          unselectedFontSize: 12, // 선택되지 않은 아이템 폰트 크기
          iconSize: 28, // 아이콘 크기
          showSelectedLabels: true, // 선택된 아이템 레이블 표시 여부
          showUnselectedLabels: true, // 선택되지 않은 아이템 레이블 표시 여부
          elevation: 5, // 그림자 효과
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '검색',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle, size: 36), // 특정 아이콘 크기 변경
              label: '추가',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '알림',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '내 정보',
            ),
          ],
          currentIndex: 0, // 현재 선택된 인덱스 (이 값은 상태로 관리해야 함)
          onTap: (int index) {
            // 선택된 아이템의 인덱스를 처리하는 로직
            print("선택된 인덱스: $index");
          },
        ),
      ),
    );
  }
}
