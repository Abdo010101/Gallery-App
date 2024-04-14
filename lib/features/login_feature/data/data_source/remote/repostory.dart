import 'package:image_picker/image_picker.dart';
import 'package:payments/features/login_feature/domain/response/Models/get_gallery_data/get_gallery_data.dart';
import 'package:payments/features/login_feature/domain/response/Models/user_login/user_login.dart';
import 'package:payments/features/login_feature/domain/response/Models/user_login/user_login.dart';
import 'package:payments/features/login_feature/domain/response/Models/user_login/user_login.dart';

abstract class LoginRepo {
  Future<UserLoginResponse?> userLogin(
      {required String email, required String password});

  Future<bool> uploadImage(
      {required dynamic pickedImage, required String token});

  Future<GetGalleryData?> getGalleryData({required String token});
}
