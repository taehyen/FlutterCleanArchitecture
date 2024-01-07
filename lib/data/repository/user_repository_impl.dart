import 'package:taehyen/data/api/user_api.dart';
import 'package:taehyen/domain/model/result/result.dart';
import 'package:taehyen/domain/model/user/user.dart';
import 'package:taehyen/domain/repository/user_repository.dart';

/// UserRepository 를 구현 해야함
class UserRepositoryImpl implements UserRepository {
  UserApi api;
  UserRepositoryImpl(this.api);

  @override
  Future<Result<User>> getUser() async {
    var result = await api.get(url: 'https://randomuser.me/api');
    return result.when(success: (s) {
      var model = User.fromJson(s);
      return Result.success(model);
    }, error: (e) {
      return Result.error("getUser api 호출 중 에러 $e");
    });
  }

  @override
  Future<Result<bool>> addUser() {
    return Future.value(Result.success(true));
  }

  @override
  Future<Result<bool>> deleteUser() {
    return Future.value(Result.error("삭제 실패"));
  }
}

class MyClass {
  final int count;

  /// 기본 생성자
  MyClass._(this.count);

  /// factory named 생성자
  factory MyClass.first() {
    return MyClass._(1);
  }

  factory MyClass.sec() {
    return MyClass._(2);
  }

  factory MyClass.third() {
    return MyClass._(3);
  }
}

var myClass = MyClass._(1);
var myClassFist = MyClass.first();
