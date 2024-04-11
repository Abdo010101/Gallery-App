import 'dart:developer';

import 'package:payments/cores/endpoints.dart';
import 'package:payments/features/login_feature/data/data_source/remote/repostory.dart';
import 'package:payments/features/login_feature/domain/response/Models/user_login/user_login.dart';

import '../../../cores/DioManager/dio_manager.dart';

class LoginRepoImp extends LoginRepo {
  final DioHelper dio;
  LoginRepoImp(this.dio);

  @override
  Future<UserLoginResponse?> userLogin(
      {required String email, required String password}) async {
    try {
      return await dio.postData(
          path: AUTOLOGIN,
          data: {"email": email, "password": password}).then((value) {
        return UserLoginResponse.fromJson(value.data);
      });
    } catch (e) {
      print('dssssssssssssssssss');
      log(e.toString());
      return null;
    }
  }
}
