import 'package:flutter_riverpod_blog_start/model/user/user.dart';
// 최초 앱이 실행될 때 초기화 되야 함
// 1. JWT 존재유무 확인 (I/O)
// 2. JWT 로 회원정보 받아봄 (I/O)
// 3. OK -> loginSuccess() 호출
// 4. FAIL -> loginPage로 이동
class SessionUser {
  User? user;
  String? jwt;
  bool? isLogin;
// 토큰이 유효한지 확인
  void loginSuccess(User user, String jwt){
    this.user = user;
    this.jwt = jwt;
    this.isLogin = true;
  }

  void logoutSuccess(){
    this.user = null;
    this.jwt = null;
    this.isLogin = false;
  }
}