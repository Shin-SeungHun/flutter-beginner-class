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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyStarApp(),
    );
  }
}

class MyStarApp extends StatefulWidget {
  const MyStarApp({super.key});

  @override
  State<MyStarApp> createState() => _MyStarAppState();
}

class _MyStarAppState extends State<MyStarApp> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://i.namu.wiki/i/R0AhIJhNi8fkU2Al72pglkrT8QenAaCJd1as-d_iY6MC8nub1iI5VzIqzJlLa-1uzZm--TkB-KHFiT-P-t7bEg.webp',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              secondArea(),
              thirdArea(),
              forthArea(),
            ],
          ),
        ),
      ),
    );
  }

  Widget secondArea() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '권은비',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                '가수',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: Row(
              children: [
                Icon(
                  isFavorite ? Icons.star : Icons.star_border,
                  color: Colors.red,
                ),
                const Text('41'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget thirdArea() {
    return const Row(
      // mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButtonWidget(
          title: 'Call',
          icon: Icon(
            Icons.call,
            color: Colors.blue,
          ),
        ),
        IconButtonWidget(
          title: 'Route',
          icon: Icon(
            Icons.near_me,
            color: Colors.blue,
          ),
        ),
        IconButtonWidget(
          title: 'share',
          icon: Icon(
            Icons.share,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }

  Widget forthArea() {
    return const Padding(
      padding: EdgeInsets.all(32.0),
      child: Text(
          '''걸그룹 예아, IZ*ONE 출신의 대한민국의 가수. 2018년 엠넷의 걸그룹 서바이벌 오디션 프로듀스 48에 참가해 최종 선발되어 IZ*ONE의 리더로 2021년 4월까지 활동하였으며, 
2021년 8월 24일 미니 1집 《OPEN》을 발매하며 솔로 가수로 활동 중이다. 2024년 가을 개봉 예정인 스마트폰을 떨어뜨렸을 뿐인데의 후속작[11]을 통해 배우로 데뷔 예정이다.'''),
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  final String title;
  final Icon icon;

  const IconButtonWidget({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Text(
          title,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
