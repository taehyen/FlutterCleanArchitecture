import 'package:flutter/material.dart';

class PageScreenTwo extends StatelessWidget {
  final String title;

  const PageScreenTwo({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Text("두번째 페이지 바디"),
    );
  }
}
