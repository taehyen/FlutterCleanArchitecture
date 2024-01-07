import 'dart:convert';

import 'package:taehyen/domain/model/result/result.dart';
import 'package:http/http.dart' as http;

/// 샘플 프로젝트에서 사용하는 메서드가 get 밖에 없어서  get만 정의
/// 디코딩 하고 resule 0번 인덱스는 데이터 구조가 정형화 되어 있어 result 0 번 인덱스로 고정
class CustumConnect {
  Future<Result<Map<String, dynamic>>> get(
      {required String url, Map<String, String>? header}) async {
    var headers = header ?? {"context-type": "application/json"};
    var response = await http.get(Uri.parse(url), headers: headers);
    if (response.statusCode < 200 || response.statusCode > 299) {
      Result.error("http 실패");
    }
    Map<String, dynamic> json = jsonDecode(response.body)["results"][0];
    return Result.success(json);
  }
}
