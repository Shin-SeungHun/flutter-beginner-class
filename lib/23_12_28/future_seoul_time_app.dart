import 'package:flutter/material.dart';
import 'package:flutter_beginner_class/23_12_28/data_source/time_api.dart';

import 'model/time.dart';

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
      home: const SeoulTimeApp(),
    );
  }
}

class SeoulTimeApp extends StatefulWidget {
  const SeoulTimeApp({super.key});

  @override
  State<SeoulTimeApp> createState() => _SeoulTimeAppState();
}

class _SeoulTimeAppState extends State<SeoulTimeApp> {
  final TimeApi _api = TimeApi();
  Time? _time;

  @override
  void initState() {
    init();
    super.initState();
  }

  Future<void> init() async {
    final time = await _api.getTime();

    setState(() {
      _time = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const FlutterLogo(),
        title: const Text('기존 방식'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              _time!.time,
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              _time!.utcTime,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
