import 'package:taehyen/domain/model/user/user.dart';
import 'package:taehyen/domain/usecase/user_usecase.dart';

class PageOneViewModel {
  final UserUsecase userUsecase;
  PageOneViewModel(this.userUsecase);
  bool isFetching = false;
  User? user;
  String? errorMessage;
  init() {
    user = null;
    errorMessage = null;
  }

  getUser() async {
    init();
    isFetching = true;
    var result = await userUsecase.getUser();
    result.when(success: (s) {
      user = s;
    }, error: (e) {
      errorMessage = e;
    });
    isFetching = false;
  }

  addUser(User? user) async {
    isFetching = true;
    // 변수명이 겹치는 경우는
    // 현재 객체를 지정할때 this 를 사용
    if (this.user != null) {
      var result = await userUsecase.addUser(this.user!);
      result.when(success: (s) {
        if (s) {
          errorMessage = "추가 성공";
        } else {
          errorMessage = "서버에서 추가 실패";
        }
      }, error: (e) {
        errorMessage = e;
      });
    } else {
      errorMessage = "삭제할 유저가 없습니다.";
    }
    isFetching = false;
  }

  deleteUser() async {
    var result = await userUsecase.deleteUser();
    result.when(success: (s) {
      if (s) {
        errorMessage = "삭제 성공";
      } else {
        errorMessage = "서버에서 삭제 실패";
      }
    }, error: (e) {
      errorMessage = e;
    });
  }
}
