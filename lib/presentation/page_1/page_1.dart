import 'package:flutter/material.dart';
import 'package:taehyen/domain/model/user/user.dart';
import 'package:taehyen/presentation/page_1/page_1_viewmode.dart';

class PageScreenOne extends StatefulWidget {
  final PageOneViewModel vm;
  final String title;
  const PageScreenOne({
    super.key,
    required this.title,
    required this.vm,
  });

  @override
  State<PageScreenOne> createState() => _PageScreenOneState();
}

class _PageScreenOneState extends State<PageScreenOne> {
  User? get user => widget.vm.user;
  String? get errorMessage => widget.vm.errorMessage;
  bool get isFetching => widget.vm.isFetching;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          /// user 가져오는 버튼
          ElevatedButton(
            onPressed: isFetching
                ? null
                : () async {
                    await widget.vm.getUser();
                    setState(() {}); // 화면 갱신
                  },
            child: Text("get user"),
          ),
          ElevatedButton(
            onPressed: () async {
              await widget.vm.deleteUser();
              setState(() {}); // 화면 갱신
            },
            child: Text("user 삭제"),
          ),
          ElevatedButton(
            onPressed: () async {
              await widget.vm.addUser(user);
              setState(() {}); // 화면 갱신
            },
            child: Text("user 추가"),
          ),

          /// ui presentation
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("user : "),
                  if (user != null)
                    Column(
                      children: [
                        Text(user!.name.first + user!.name.last),
                        // 무슨 이유에서인지.. user에서 받아온 이미지가 출력되지 않아 임시로 Gif링크 넣어놓음
                        Image.network(
                          'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                          width: 100,
                          height: 50,
                        ),
                      ],
                    ),
                  if (user == null) Text("user 없음"),
                ],
              ),
              Row(
                children: [
                  if (errorMessage != null)
                    Column(
                      children: [
                        Text("message : "),
                        Text(errorMessage!),
                      ],
                    ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
