import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:payments/cores/DioManager/dio_manager.dart';
import 'package:payments/cores/endpoints.dart';
import 'package:payments/features/login_feature/data/data_source/remote/repostory.dart';
import 'package:payments/features/login_feature/domain/response/Models/get_gallery_data/get_gallery_data.dart';
import 'package:payments/features/login_feature/domain/response/Models/user_login/user_login.dart';
import 'package:permission_handler/permission_handler.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginInitial());
  final LoginRepo loginRepo;
  String tokenUser = '';
  File? image;
  Future<UserLoginResponse?> userLoginCubit(
      {required String email, required String password}) async {
    print('this before the deug mode ');
    emit(LoginLoading());
    var res = await loginRepo.userLogin(email: email, password: password);
    print(res);
    if (res == null) {
      emit(Loginerror());
      return res;
    } else {
      emit(LoginSucess());
      return res;
    }
  }

  GetGalleryData? getGalleryData;
  getDataFromGalleryCubit(String token) async {
    emit(GetImageGalleryLoading());

    getGalleryData = await loginRepo.getGalleryData(token: token);
    if (getGalleryData!.status != 'success') {
      emit(GetImageGalleryeerror());
    } else {
      emit(GetImageGallerySucess());
    }
  }

  Future<bool> uploadImageCubit(pikedImag, String token) async {
    emit(UploadImageLoading());
    log('inside the cubit');
    bool res =
        await loginRepo.uploadImage(pickedImage: pikedImag, token: token);
    if (res == false) {
      emit(UploadImageerror());
      return res;
    } else {
      emit(UploadImageSucess());
      return res;
    }
  }

  checkUploadImageToServer(context) async {
    if (image != null) {
      bool uploadImageStatus = await uploadImageCubit(image!, tokenUser);

      if (uploadImageStatus) {
        getDataFromGalleryCubit(tokenUser);
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("image uploaded Sucess")));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Plesase Sleact Photo to upload")));
    }
  }

  Future<void> checkAndRequestPermiisonForGalleryAndCamera(
      context, bool isCmaera) async {
    Map<Permission, PermissionStatus> getStatus =
        await [Permission.camera, Permission.storage].request();

    if (getStatus[Permission.camera] == PermissionStatus.granted ||
        getStatus[Permission.storage] == PermissionStatus.granted) {
      if (isCmaera) {
        await getImageFromCamera();
      } else {
        await getImageFromGallery();
      }
    }

    if (getStatus[Permission.camera] != PermissionStatus.granted ||
        getStatus[Permission.storage] != PermissionStatus.granted) {
      // return error herer

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Permission Denyied')));
    }
  }

  Future<File?> getImageFromGallery() async {
    ImagePicker piker = ImagePicker();
    var file = await piker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      image = File(file.path);
      return image;
    } else {
      return null;
    }
  }

  Future<File?> getImageFromCamera() async {
    ImagePicker piker = ImagePicker();
    var file = await piker.pickImage(source: ImageSource.camera);
    if (file != null) {
      image = File(file.path);
      return image;
    } else {
      return null;
    }
  }
}
