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
      home: const BirthdayCardApp(),
    );
  }
}

class BirthdayCardApp extends StatelessWidget {
  const BirthdayCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://img.freepik.com/free-vector/blur-pink-blue-abstract-gradient-background-vector_53876-174836.jpg?size=626&ext=jpg&ga=GA1.1.1222169770.1702425600&semt=ais',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                const Text(
                  'Happy Birthday Sam!',
                  style: TextStyle(fontSize: 30),
                ),
                const Text(
                  '- from Emma',
                  style: TextStyle(fontSize: 20),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Lottie.asset(
                      'assets/lottie/birthday.json',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
