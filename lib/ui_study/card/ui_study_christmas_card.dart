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
      home: const ChristmasCard(),
    );
  }
}

class ChristmasCard extends StatelessWidget {
  const ChristmasCard({super.key});

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
          Column()
        ],
      ),
    );
  }
}
