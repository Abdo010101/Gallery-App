import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:payments/cores/DioManager/di.dart';
import 'package:payments/cores/widgets/button.dart';
import 'package:payments/features/login_feature/presentation/views/login/login_cubit.dart';
import 'package:permission_handler/permission_handler.dart';

class BuildButton extends StatefulWidget {
  const BuildButton({super.key, required this.loginCubit});
  final LoginCubit loginCubit;

  @override
  State<BuildButton> createState() => _BuildButtonState();
}

class _BuildButtonState extends State<BuildButton> {
  @override
  Widget build(BuildContext context) {
    return Button1(
      width: 130.w,
      imageString: 'assets/images/Vector (1).png',
      title: 'Upload',
      onTap: () {
        BuildContext? diologContex;
        showDialog(
            context: context,
            builder: (context) {
              diologContex = context;
              return BuildDialogPermissionGallery(
                loginCubit: widget.loginCubit!,
              );
            }).then((value) {
          Navigator.pop(diologContex!);
        });
      },
    );
  }
}

class BuildDialogPermissionGallery extends StatelessWidget {
  BuildDialogPermissionGallery(
      {super.key, required this.loginCubit, this.onTap});
  final LoginCubit loginCubit;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Opacity(
          opacity: 0.45,
          child: Dialog(
            elevation: 0,
            child: Container(
              height: MediaQuery.sizeOf(context).height / 3,
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button1(
                    width: 140.w,
                    color: const Color(0xffEA94D7).withOpacity(0.9),
                    imageString: 'assets/images/gallery.png',
                    title: 'Gallery',
                    onTap: () async {
                      //! upload image form Gallery
                      await loginCubit
                          .checkAndRequestPermiisonForGalleryAndCamera(
                        context,
                        false,
                      );

                      loginCubit.checkUploadImageToServer(context);
                    },
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Button1(
                    width: 140.w,
                    color: const Color(0xffEA94D7).withOpacity(0.9),
                    imageString: 'assets/images/3.png',
                    title: 'Camera',
                    onTap: () async {
                      //! upload image form camera
                      await loginCubit
                          .checkAndRequestPermiisonForGalleryAndCamera(
                        context,
                        true,
                      );

                      loginCubit.checkUploadImageToServer(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
