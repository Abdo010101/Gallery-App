import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payments/cores/utils/styles.dart';
import 'package:payments/cores/widgets/button.dart';
import 'package:payments/cores/widgets/defaultButton.dart';
import 'package:image_picker/image_picker.dart';
import 'package:payments/features/login_feature/presentation/views/widgets/buildDiolog.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffEA94D7).withOpacity(0.9),
            borderRadius:
                BorderRadiusDirectional.only(topEnd: Radius.circular(280)),
          ),
          height: MediaQuery.sizeOf(context).height,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 10,
                  top: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      'Welcome \n Mina',
                      style: Styles.style25.copyWith(color: Colors.black45),
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/Group.png"),
                      backgroundColor: Colors.black,
                      radius: 38,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Button1(
                        width: 130.w,
                        imageString: 'assets/images/Vector.png',
                        title: 'log out',
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    Expanded(
                      child: Button1(
                        width: 130.w,
                        imageString: 'assets/images/Vector (1).png',
                        title: 'Upload',
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return BuildDialogPermissionGallery();
                              });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: GridView.builder(
                      itemCount: 30,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 11.h,
                          crossAxisSpacing: 10.h,
                          childAspectRatio: 1,
                          crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/Group.png'),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
