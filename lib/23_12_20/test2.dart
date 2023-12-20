import 'package:flutter/material.dart';

import 'model/star.dart';

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
      home: MyStarApp(
        star: Star(
          title: '아이유',
          subTitle: '가수',
          imageUrl:
              'https://i.namu.wiki/i/R0AhIJhNi8fkU2Al72pglkrT8QenAaCJd1as-d_iY6MC8nub1iI5VzIqzJlLa-1uzZm--TkB-KHFiT-P-t7bEg.webp',
          description: '''대한민국의 싱어송라이터이자 배우.

2008년 9월 18일, 중학교 3학년이던 만 15세의 나이에 가수로 데뷔했다. 예명인 '아이유'는 '너와 내가 음악으로 하나가 된다'라는 뜻을 가지고 있다. 매력적인 음색과 뛰어난 작사ㆍ작곡 능력을 바탕으로 솔로 아이돌이자 아티스트로서 십수 년째 사랑 받고 있을 뿐 아니라 2012년 이래로 매년 국내 및 아시아의 주요 도시에서 대규모 콘서트를 진행하며 공연자로서도 활발히 활동 중이다.

가수 활동 외에도 각종 예능 프로그램에 출연했으며, 데뷔 이래 80편이 넘는 광고를 진행했을 정도로 다수의 광고 모델로도 활약 중이다. 2011년에 연기자로 데뷔한 후에는 다양한 드라마와 영화에서 연기 활동도 활발하게 펼치고 있다. 연예계에서는 그야말로 올라운더로 인정 받는 만능 엔터테이너이며, 이 때문에 남녀불문 수많은 아이돌들의 롤모델로 꾸준히 꼽히고 있다.''',
        ),
      ),
    );
  }
}

class MyStarApp extends StatefulWidget {
  final Star star;

  const MyStarApp({super.key, required this.star});

  @override
  State<MyStarApp> createState() => _MyStarAppState();
}

class _MyStarAppState extends State<MyStarApp> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 8 / 10,
              child: Image.network(
                widget.star.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            secondArea(),
            thirdArea(),
            fourthArea(),
          ],
        ),
      ),
    );
  }

  Widget secondArea() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.star.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.star.subTitle,
                style: const TextStyle(
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
                Icon(isFavorite ? Icons.star : Icons.star_border,
                    color: Colors.red),
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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButtonWidget(
          title: 'call',
          icon: Icon(Icons.phone),
        ),
        IconButtonWidget(
          title: 'route',
          icon: Icon(Icons.near_me),
        ),
        IconButtonWidget(
          title: 'share',
          icon: Icon(Icons.share),
        ),
      ],
    );
  }

  Widget fourthArea() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        widget.star.description,
        // overflow: TextOverflow.ellipsis,
      ),
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
        Icon(
          icon.icon,
          color: Colors.blue,
        ),
        Text(
          title,
        )
      ],
    );
  }
}
