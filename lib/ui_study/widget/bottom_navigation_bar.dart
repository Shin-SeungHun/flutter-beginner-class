import 'package:flutter/material.dart';

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


      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              backgroundImage:
                  AssetImage('assets/image/youtube_profile.jpg'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline_rounded), label: 'Shorts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline, size: 40), label: ' '),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined), label: '구독'),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: '보관함',
          ),
        ],
      ),
    );
  }
}
