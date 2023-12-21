import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/ui_study/widget/pages/add_content.dart';
import 'package:flutter_beginner_class/ui_study/widget/pages/home.dart';
import 'package:flutter_beginner_class/ui_study/widget/pages/shorts.dart';
import 'package:flutter_beginner_class/ui_study/widget/pages/subscribe.dart';
import 'package:flutter_beginner_class/ui_study/widget/pages/video_library.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: const AppBarBottomNavigation(),
    );
  }
}

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
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.tap_and_play),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notification_add),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
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
