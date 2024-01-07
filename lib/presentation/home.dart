import 'package:flutter/material.dart';
import 'package:taehyen/data/api/user_api.dart';
import 'package:taehyen/data/repository/user_repository_impl.dart';
import 'package:taehyen/domain/service/user_service.dart';
import 'package:taehyen/presentation/page_1/page_1.dart';
import 'package:taehyen/presentation/page_1/page_1_viewmode.dart';
import 'package:taehyen/presentation/page_2/page_2.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // column : 여러개 항목이 들어 갈수 있기 때문에 children속성을 갖는다
    // row : 여러개 항목이 들어 갈수 있기 때문에 children속성을 갖는다
    // stack : 여러개 항목이 들어 갈수 있기 때문에 children속성을 갖는다
    return Scaffold(
      body: PageView(
        children: [
          PageScreenOne(
            title: "첫번째 페이지",
            vm: PageOneViewModel(
              UserService(UserRepositoryImpl(UserApi())),
            ),
          ),
          PageScreenTwo(
            title: "두번째 페이지",
          ),
          // ListView(
          //   children: [
          //     for (var i = 0; i < 10000; i++) Text("string"),
          //   ],
          // ),
          ListView.builder(
            itemCount: 1000000,
            itemBuilder: (BuildContext context, int index) {
              return Text("string $index");
            },
          )
        ],
      ),
    );
  }
}
