import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.mail_outline,
              size: 170,
            ),
            Text(
              'Full Name',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              'Title',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 170), // 위젯들 사이에 간격 추가
            DataWidget(
              data: '+00 (00) 000 000',
            ),
            SizedBox(height: 20), // 위젯들 사이에 간격 추가
            DataWidget(
              data: '@socialmediahandle',
            ),
            SizedBox(height: 20), // 위젯들 사이에 간격 추가
            DataWidget(
              data: '+email@domail.com',
            ),
          ],
        ),
      ),
    );
  }
}

class DataWidget extends StatefulWidget {
  final String _data;

  const DataWidget({
    super.key,
    required String data,
  }) : _data = data;

  @override
  State<DataWidget> createState() => _DataWidgetState();
}

class _DataWidgetState extends State<DataWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
      children: [
        const Icon(Icons.mail_outline),
        const SizedBox(width: 8,),
        Text(widget._data),
      ],
    );
  }
}
