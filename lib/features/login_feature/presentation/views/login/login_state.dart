part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class Loginerror extends LoginState {}

class LoginSucess extends LoginState {}

class UploadImageLoading extends LoginState {}

class UploadImageerror extends LoginState {}

class UploadImageSucess extends LoginState {}

class GetImageGalleryLoading extends LoginState {}

class GetImageGalleryeerror extends LoginState {}

class GetImageGallerySucess extends LoginState {}
