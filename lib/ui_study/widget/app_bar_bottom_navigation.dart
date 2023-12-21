import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/ui_study/widget/app_bar_pages/connect_to_device_page.dart';
import 'package:flutter_beginner_class/ui_study/widget/app_bar_pages/notification_page.dart';
import 'package:flutter_beginner_class/ui_study/widget/app_bar_pages/user_page.dart';
import 'app_bar_pages/search_page.dart';
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

  static List<Widget> pages = [
    Home(),
    Shorts(),
    AddContent(),
    Subscribe(),
    VideoLibrary()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const FlutterLogo(),
        title: const Text('F tube'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.tap_and_play),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConnectToDevicePage()),
              );
            },
          ),
          // ),

          IconButton(
            icon: Icon(Icons.notification_add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationPage()),
              );
              print('Notification add icon pressed');
            },
          ),

          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            },
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserPage()),
                );
              },
              child: CircleAvatar(
                radius: 17.0, // 선호하는 크기로 반지름 조정
                backgroundImage: AssetImage('assets/image/youtube_profile.jpg'),
              ),
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
