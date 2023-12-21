import 'package:flutter/material.dart';

import 'bottom_pages/add_content.dart';
import 'bottom_pages/home.dart';
import 'bottom_pages/shorts.dart';
import 'bottom_pages/subscribe.dart';
import 'bottom_pages/video_library.dart';

class AppBarBottomNavigation extends StatefulWidget {
  const AppBarBottomNavigation({super.key});

  @override
  State<AppBarBottomNavigation> createState() => _AppBarBottomNavigationState();
}

class _AppBarBottomNavigationState extends State<AppBarBottomNavigation> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    Home(),
    Shorts(),
    AddContent(),
    Subscribe(),
    VideoLibrary()
  ];

  void _onItemTap(int index) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const FlutterLogo(),
        title: const Text('F tube'),
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.tap_and_play),
              onPressed: () {
                // TODO: 'tap_and_play' 아이콘을 눌렀을 때 수행할 동작 추가
                print('Tap and play icon pressed');
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.notification_add),
              onPressed: () {
                // TODO: 'notification_add' 아이콘을 눌렀을 때 수행할 동작 추가
                print('Notification add icon pressed');
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // TODO: 'search' 아이콘을 눌렀을 때 수행할 동작 추가
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SearchScreen()),
                // );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 17.0, // 선호하는 크기로 반지름 조정
              backgroundImage: AssetImage('assets/image/youtube_profile.jpg'),
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        showSelectedLabels: true,
        // 선택된 라벨 보이기
        showUnselectedLabels: true,
        // 선택되지 않은 라벨 보이기
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          print('Selected index: $index');
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline_rounded), label: 'Shorts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline, size: 40), label: ' '),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined), label: '구독'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library), label: '보관함'),
        ],
      ),
    );
  }
}
