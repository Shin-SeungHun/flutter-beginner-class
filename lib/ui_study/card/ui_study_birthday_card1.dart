import 'package:flutter/material.dart';

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
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Happy',
              style: TextStyle(
                fontSize: 80,
              ),
            ),
            Text(
              'Birthday',
              style: TextStyle(
                fontSize: 80,
              ),
            ),
            Text(
              'Sam!',
              style: TextStyle(
                fontSize: 80,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'From Emma',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
