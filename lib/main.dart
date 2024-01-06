// 필요한 위젯 메서드 등이 정의 되어 있습니다.
import 'package:flutter/material.dart';
import 'package:taehyen/presentation/home.dart';

/// 처음 실행해야 하는 메서드
void main() {
  // 앱을 실행, material.dart안에 들어있는 메서드
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp: 앱을 만들기 위한 기본 셋팅
    return MaterialApp(
      /// 우측 상단에 개발 중임을 표시하는 배너 표시 (false없음 기본값 true)
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // 여기에서 시작
      // 만약 routes 속성을 넣고 home 속성을 넣지 않으면 routes의 initial 속성의 페이지에서 시작
      home: const MyHomePage(),
      // routes: {
      //   "/": (context) => MyHomePage(),
      //   "/about": (context) => About(),
      // },
    );
  }
}
