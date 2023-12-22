import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/starbucks_ui/bottom_pages/Home_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex =0;

  static List<Widget> pages = [
    HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: IndexedStack(
        index: _selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(

        // 선택되지 않은 라벨 보이기
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          print('Selected index: $index');
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment), label: 'Pay'),
          BottomNavigationBarItem(
              icon: Icon(Icons.coffee), label: 'Order'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz), label: 'Other'),
        ],
      ),
    );
  }
}
