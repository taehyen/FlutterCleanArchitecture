import 'package:taehyen/data/util/custom_connect.dart';
import 'package:taehyen/domain/model/result/result.dart';

/// CustomConnect를 상속받아 get 메서드를 사용할수 있음
/// CustomConnect는 정의한 객체 입니다.
/// 호출 및 반환 역할만 함.
class UserApi extends CustumConnect {
  Future<Result<Map<String, dynamic>>> getUser() {
    var response = get(url: "https://randomuser.me/api");
    return response;
  }
}
