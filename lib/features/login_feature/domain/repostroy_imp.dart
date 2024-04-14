import 'dart:developer';

import 'package:cross_file/src/types/interface.dart';
import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
import 'package:payments/cores/endpoints.dart';
import 'package:payments/features/login_feature/data/data_source/remote/repostory.dart';
import 'package:payments/features/login_feature/domain/response/Models/get_gallery_data/get_gallery_data.dart';
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

  @override
  Future<bool> uploadImage(
      {required pickedImage, required String token}) async {
    Dio dio =
        Dio(BaseOptions(baseUrl: BASEURL, receiveDataWhenStatusError: true));
    String fileName = pickedImage.path.split('/').last;
    try {
      Map<String, dynamic> headers = {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer " + token
      };
      FormData formData = FormData.fromMap({
        "img": await MultipartFile.fromFile(
          pickedImage.path,
          filename: fileName,
        )
      });

      return await dio
          .post(UPLOAD, data: formData, options: Options(headers: headers))
          .then((value) {
        print('upldad image succcccccccccccccccc');
        print(value.data);
        return true;
      });
    } catch (e) {
      print('error come from respostory');
      log(e.toString());
      return false;
    }
  }

  @override
  Future<GetGalleryData?> getGalleryData({required String token}) async {
    try {
      return await dio
          .getDataWithToken(path: MYGALLERY, tokenid: token)
          .then((value) {
        print(value.data);
        return GetGalleryData.fromJson(value.data);
      });
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
