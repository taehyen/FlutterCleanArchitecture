import 'package:taehyen/domain/model/result/result.dart';
import 'package:taehyen/domain/model/user/user.dart';

abstract class UserUsecase {
  Future<Result<User>> getUser();

//// ---------------  아래 메서드는 학습을 위한 메서드 입니다. 반환값은 임의의 bool 값입니다.
  Future<Result<bool>> deleteUser();

  Future<Result<bool>> addUser(User user);
}
