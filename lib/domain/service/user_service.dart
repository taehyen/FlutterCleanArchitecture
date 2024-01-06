import 'package:taehyen/domain/model/result/result.dart';
import 'package:taehyen/domain/model/user/user.dart';
import 'package:taehyen/domain/repository/user_repository.dart';
import 'package:taehyen/domain/usecase/user_usecase.dart';

class UserService implements UserUsecase {
  final UserRepository userRepo;
  UserService(this.userRepo);

  @override
  Future<Result<User>> getUser() async {
    var result = await userRepo.getUser();
    return result;
  }

  @override
  Future<Result<bool>> addUser(User user) async {
    var result = await userRepo.addUser();
    return result;
  }

  @override
  Future<Result<bool>> deleteUser() async {
    var result = await userRepo.deleteUser();
    return result;
  }
}
