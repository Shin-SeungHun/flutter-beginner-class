import 'package:flutter/material.dart';

class VideoLibrary extends StatefulWidget {
  const VideoLibrary({super.key});

  @override
  State<VideoLibrary> createState() => _VideoLibraryState();
}

class _VideoLibraryState extends State<VideoLibrary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('보관함'),
      ),
    );
  }
}
