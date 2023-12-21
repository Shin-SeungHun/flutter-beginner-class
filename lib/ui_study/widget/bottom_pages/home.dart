import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_20/repository/video_repository.dart';

import '../model/video.dart';

class Home extends StatefulWidget {
  final Video video;
  final List<Video> videoList = [
    Video(
      title: '솔직히 장충동 왕족발 맛 없죠?ㅋㅋㅋ',
      subTitle: '피지컬갤러리 • 조회수 19만회 • 6시간 전 ',
      thumbnailUrl:
          'https://i.namu.wiki/i/R0AhIJhNi8fkU2Al72pglkrT8QenAaCJd1as-d_iY6MC8nub1iI5VzIqzJlLa-1uzZm--TkB-KHFiT-P-t7bEg.webp',
      upLoaderUrl:
          'https://i.namu.wiki/i/R0AhIJhNi8fkU2Al72pglkrT8QenAaCJd1as-d_iY6MC8nub1iI5VzIqzJlLa-1uzZm--TkB-KHFiT-P-t7bEg.webp',
    ),
  ];

  Home({super.key, required this.video});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final VideoRepository videoRepository = VideoRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 48,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: IconButton(
                    icon: Icon(Icons.explore_outlined, size: 35),
                    onPressed: () {},
                  ),
                ),
                CardListWidget(title: '전체'),
                CardListWidget(title: '게임'),
                CardListWidget(title: '뉴스'),
                CardListWidget(title: '실시간'),
                CardListWidget(title: '믹스'),
                CardListWidget(title: '피트니스'),
                CardListWidget(title: '만화영화'),
                CardListWidget(title: '최근에 업로드된 동영상'),
                CardListWidget(title: '게시물'),
                CardListWidget(title: '새로운 맞춤 동영상'),
              ],
            ),
          ),
          for(Video video in videoRepository.videoList)
            YoutubeVideoWidget(video: video),
        ],
      ),
    );
  }
}

class YoutubeVideoWidget extends StatelessWidget {
  final Video video; // Video 클래스의 인스턴스를 받을 변수 추가

  const YoutubeVideoWidget({
    super.key,
    required this.video, // Video 클래스의 인스턴스를 받을 매개변수 추가
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(video.thumbnailUrl),
        Container(
          height: 1,
          color: Colors.white,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(video.upLoaderUrl),
          ),
          title: Text(
            video.title,
            style: TextStyle(fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis,
              ),
          ),
          subtitle: Text(video.subTitle, style: TextStyle(fontSize: 13),),
          trailing: Icon(Icons.more_vert),
        ),
      ],
    );
  }
}

class CardListWidget extends StatelessWidget {
  final String _title;

  const CardListWidget({
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
