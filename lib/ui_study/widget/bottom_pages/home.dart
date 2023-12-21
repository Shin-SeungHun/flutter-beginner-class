import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 48,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.explore_outlined, size: 35),
                onPressed: () {},
              ),
            ),
            cardListWidget(title: '전체'),
            cardListWidget(title: '게임'),
            cardListWidget(title: '뉴스'),
            cardListWidget(title: '실시간'),
            cardListWidget(title: '믹스'),
            cardListWidget(title: '피트니스'),
            cardListWidget(title: '만화영화'),
            cardListWidget(title: '최근에 업로드된 동영상'),
            cardListWidget(title: '게시물'),
            cardListWidget(title: '새로운 맞춤 동영상'),
          ],
        ),
      ),
    );
  }
}

class cardListWidget extends StatelessWidget {
  final String _title;

  const cardListWidget({
    super.key,
    required String title,
  }) : _title = title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          _title,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
