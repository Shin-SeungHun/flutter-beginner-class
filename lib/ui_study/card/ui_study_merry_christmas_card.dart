import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ui Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ChristmasCardApp(),
    );
  }
}

class ChristmasCardApp extends StatelessWidget {
  const ChristmasCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/image/christmas.jpg',
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:120.0),
                child: Lottie.asset(
                  'assets/lottie/christmas2.json',
                ),
              ),
              const Text(
                'Merry',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                'Christmas',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                '- from ssh',
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
