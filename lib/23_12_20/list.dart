import 'package:flutter/material.dart';

import 'package:flutter_beginner_class/23_12_20/model/star.dart';

import '00_ui_basic.dart';



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
      home: StarListScreen(),
    );
  }
}

class StarListScreen extends StatelessWidget {
  final List<Star> stars = [
    Star(
      title: '아이유',
      subTitle: '싱어송라이터, 배우',
      imageUrl:
          'https://i.namu.wiki/i/R0AhIJhNi8fkU2Al72pglkrT8QenAaCJd1as-d_iY6MC8nub1iI5VzIqzJlLa-1uzZm--TkB-KHFiT-P-t7bEg.webp',
      description: '''대한민국의 싱어송라이터이자 배우.

        2008년 9월 18일, 중학교 3학년이던 만 15세의 나이에 가수로 데뷔했다. 예명인 '아이유'는 '너와 내가 음악으로 하나가 된다'라는 뜻을 가지고 있다. 매력적인 음색과 뛰어난 작사ㆍ작곡 능력을 바탕으로 솔로 아이돌이자 아티스트로서 십수 년째 사랑 받고 있을 뿐 아니라 2012년 이래로 매년 국내 및 아시아의 주요 도시에서 대규모 콘서트를 진행하며 공연자로서도 활발히 활동 중이다.

    가수 활동 외에도 각종 예능 프로그램에 출연했으며, 데뷔 이래 80편이 넘는 광고를 진행했을 정도로 다수의 광고 모델로도 활약 중이다. 2011년에 연기자로 데뷔한 후에는 다양한 드라마와 영화에서 연기 활동도 활발하게 펼치고 있다. 연예계에서는 그야말로 올라운더로 인정 받는 만능 엔터테이너이며, 이 때문에 남녀불문 수많은 아이돌들의 롤모델로 꾸준히 꼽히고 있다.''',
    ),
    Star(
      title: '권은비',
      subTitle: '가수',
      imageUrl:
          'https://i.namu.wiki/i/N09dI-kwg0rEwjKok3QPg5NKB3GUaMW6XY6pzoL7J9KJ1_jfBM-CBv-LT2pipCY7Td5RunH6kmpKHXOEbYPSqg.webp',
      description: '''걸그룹 예아, IZ*ONE 출신의 대한민국의 가수.

2018년 엠넷의 걸그룹 서바이벌 오디션 프로듀스 48에 참가해 최종 선발되어 IZ*ONE의 리더로 2021년 4월까지 활동하였으며, 2021년 8월 24일 미니 1집 《OPEN》을 발매하며 솔로 가수로 활동 중이다.

2024년 가을 개봉 예정인 스마트폰을 떨어뜨렸을 뿐인데의 후속작을 통해 배우로 데뷔 예정이다.
''',
    ),
  ];

  StarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('스타'),
      ),
      body: ListView(
        children: stars.map((star) {
          return SizedBox(
            height: 1200,
            child: MyStarApp(star: star),
          );
        }).toList(),
      ),
    );
  }
}
