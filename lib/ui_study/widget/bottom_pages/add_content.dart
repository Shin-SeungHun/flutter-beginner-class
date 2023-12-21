import 'package:flutter/material.dart';

class AddContent extends StatefulWidget {
  const AddContent({super.key});

  @override
  State<AddContent> createState() => _AddContentState();
}

class _AddContentState extends State<AddContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('영상 추가'),
      ),
    );
  }
}
