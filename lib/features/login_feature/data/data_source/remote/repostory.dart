import 'package:payments/features/login_feature/domain/response/Models/user_login/user_login.dart';
import 'package:payments/features/login_feature/domain/response/Models/user_login/user_login.dart';
import 'package:payments/features/login_feature/domain/response/Models/user_login/user_login.dart';

abstract class LoginRepo {
  Future<UserLoginResponse?> userLogin(
      {required String email, required String password});
}
