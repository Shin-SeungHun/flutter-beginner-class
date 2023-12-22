import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, List<String>>> imageInfoList = [
    {
      'path': ['assets/starbucks_image/04_01_cardnews.png'],
      'texts': ['12월 20일, 그리팅 카드 및 모•••', 'Greeting Card & 물품형 모바일 상품권'],
    },
    {
      'path': ['assets/starbucks_image/04_02_cardnews.png'],
      'texts': ['스벅TV \'스타벅스 10대 매장 \' •••', '스타벅스 코리아 10대 매장을 스벅TV에서'],
    },
    {
      'path': ['assets/starbucks_image/04_03_cardnews.png'],
      'texts': ['스타벅스 앱 보안 강화', '안전한 서비스 이용을 위하여 Pay 탭 이용,'],
    },
    {
      'path': ['assets/starbucks_image/04_04_cardnews.png'],
      'texts': ['기장임랑원 크리스마스 이벤트', '기장임랑원 글라스하우스에서 베어리스타와,'],
    },
    {
      'path': ['assets/starbucks_image/04_05_cardnews.png'],
      'texts': ['굿바이 2023 사이즈업 이벤트', '골드 회원 고객님, 사이즈업 쿠폰으로,'],
    },
    {
      'path': ['assets/starbucks_image/04_06_cardnews.png'],
      'texts': ['12월 14일, 치킨 베이컨 랩 출시', '간편하고 든든한 치킨 베이컨 랩을'],
    },
    {
      'path': ['assets/starbucks_image/04_07_cardnews.png'],
      'texts': ['스타벅스 더북 한강R점에서 함•••', ''],
    },
    {
      'path': ['assets/starbucks_image/04_08_cardnews.png'],
      'texts': ['12월 12일, 이커머스 전용 테•••', '테라조 패턴으로 익숙한 공간에 포인트를'],
    },
    {
      'path': ['assets/starbucks_image/04_09_cardnews.png'],
      'texts': ['12월 스타벅스 일회용컵 없는 •••', '매월 10일은 일회용컵 없는 날!'],
    },
    {
      'path': ['assets/starbucks_image/04_10_cardnews.png'],
      'texts': ['2023 윈터 e-프리퀀시 이벤트 •••', '2023 윈터 e-프리퀀시 이벤트 안내'],
    },
    {
      'path': ['assets/starbucks_image/04_11_cardnews.png'],
      'texts': ['2023 윈터 e-프리퀀시 예약 •••', '2023 윈터 e-프리퀀시 예약 시스템 이용 안내'],
    },
    {
      'path': ['assets/starbucks_image/04_12_cardnews.png'],
      'texts': ['만원 별 적립 이벤트', '결제 금액 1만원당 별 1개 추가 적립!'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                '스타벅스 케이크와 함께\n2023년을 마무리해요!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                  'assets/starbucks_image/01_01_2023_winter_e-frequency.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                  'assets/starbucks_image/03_01_chrismas_event.png'),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(22.0, 8.0, 8.0, 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '''What's New''',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'See all',
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(22.0, 0, 22, 0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HorizontalListWidget(
                              imagePath:
                                  'assets/starbucks_image/04_01_cardnews.png',
                              title: '12월 20일, 그리팅 카드 및 모•••',
                              subTitle:
                                  'Greeting Card & 물품형 모바일 상품권 \n잔액 충전 기능 오픈!'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HorizontalListWidget(
                              imagePath:
                                  'assets/starbucks_image/04_02_cardnews.png',
                              title: '스벅TV \'스타벅스 10대 매장 \' •••',
                              subTitle: '스타벅스 코리아 10대 매장을 스벅TV에서 \n만나보세요!'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HorizontalListWidget(
                              imagePath:
                                  'assets/starbucks_image/04_03_cardnews.png',
                              title: '스타벅스 앱 보안 강화',
                              subTitle:
                                  '안전한 서비스 이용을 위하여 Pay 탭 이용,\n다중 기기/해외 로그인 시 인증 절차 적용'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HorizontalListWidget(
                              imagePath:
                                  'assets/starbucks_image/04_04_cardnews.png',
                              title: '기장임랑원 크리스마스 이벤트',
                              subTitle:
                                  '기장임랑원 글라스하우스에서 베어리스타와 \n특별한 크리스마스 추억을 남겨보세요.'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HorizontalListWidget(
                              imagePath:
                                  'assets/starbucks_image/04_05_cardnews.png',
                              title: '굿바이 2023 사이즈업 이벤트',
                              subTitle:
                                  '골드 회원 고객님, 사이즈업 쿠폰으로\n스타벅스와 함꼐연말의 즐거움을 더 크게'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HorizontalListWidget(
                              imagePath:
                                  'assets/starbucks_image/04_06_cardnews.png',
                              title: '12월 14일, 치킨 베이컨 랩 출시',
                              subTitle: '간편하고 든든한 치킨 베이컨 랩을\n만나보세요.'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HorizontalListWidget(
                              imagePath:
                                  'assets/starbucks_image/04_07_cardnews.png',
                              title: '스타벅스 더북 한강R점에서 함•••',
                              subTitle: ''),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HorizontalListWidget(
                              imagePath:
                                  'assets/starbucks_image/04_08_cardnews.png',
                              title: '12월 12일, 이커머스 전용 테•••',
                              subTitle: '테라조 패턴으로 익숙한 공간에 포인트를 \n더해보세요.'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HorizontalListWidget(
                              imagePath:
                                  'assets/starbucks_image/04_09_cardnews.png',
                              title: '12월 스타벅스 일회용컵 없는 •••',
                              subTitle: '매월 10일은 일회용컵 없는 날!'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HorizontalListWidget(
                              imagePath:
                                  'assets/starbucks_image/04_10_cardnews.png',
                              title: '2023 윈터 e-프리퀀시 이벤트 •••',
                              subTitle: '2023 윈터 e-프리퀀시 이벤트 안내'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HorizontalListWidget(
                              imagePath:
                                  'assets/starbucks_image/04_11_cardnews.png',
                              title: '2023 윈터 e-프리퀀시 예약 •••',
                              subTitle: '2023 윈터 e-프리퀀시 예약 시스템 이용 안내'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HorizontalListWidget(
                              imagePath:
                                  'assets/starbucks_image/04_12_cardnews.png',
                              title: '만원 별 적립 이벤트',
                              subTitle: '결제 금액 1만원당 별 1개 추가 적립!'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Image.asset('assets/starbucks_image/06_01_card.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Image.asset('assets/starbucks_image/06_02_card.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Image.asset('assets/starbucks_image/06_03_card.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Image.asset('assets/starbucks_image/06_04_card.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class HorizontalListWidget extends StatelessWidget {
  String imagePath;
  String title;
  String subTitle;

  HorizontalListWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 320,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath),
          SizedBox(height: 10), // 이미지와 텍스트 간격 조절
          Wrap(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ],
          ),
          Wrap(
            children: [
              Text(
                subTitle,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
