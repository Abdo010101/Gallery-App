import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:payments/cores/widgets/button.dart';
import 'package:permission_handler/permission_handler.dart';

class BuildDialogPermissionGallery extends StatelessWidget {
  BuildDialogPermissionGallery({super.key});
  File? image;
  @override
  Widget build(BuildContext context) {
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
                color: Color(0xffEA94D7).withOpacity(0.9),
                imageString: 'assets/images/gallery.png',
                title: 'Gallery',
                onTap: () async {
                  // upload image from gallery
                  await checkAndRequestPermiisonForGalleryAndCamera(false);
                  // await getImageFromGallery();
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              Button1(
                width: 140.w,
                color: Color(0xffEA94D7).withOpacity(0.9),
                imageString: 'assets/images/3.png',
                title: 'Camera',
                onTap: () async {
                  //! upload image form camera
                  await checkAndRequestPermiisonForGalleryAndCamera(true);
                  //    await getImageFromGallery();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> checkAndRequestPermiisonForGalleryAndCamera(
      bool isCmaera) async {
    PermissionStatus status = await Permission.camera.status;
    if (status.isGranted) {
      if (isCmaera) {
        await getImageFromCamera();
      } else {
        await getImageFromGallery();
      }
    }
    if (status.isDenied) {
      Permission.camera.request();
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
