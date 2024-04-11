import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payments/cores/utils/styles.dart';
import 'package:payments/features/login_feature/presentation/views/login/login_cubit.dart';
import 'package:payments/features/login_feature/presentation/views/widgets/build_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffEA94D7).withOpacity(0.9),
      body: SingleChildScrollView(
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: Image.asset('assets/images/love_photography.png'),
            ),
            Center(
              child: Text(
                'My',
                style: Styles.style50.copyWith(color: Colors.black38),
              ),
            ),
            Center(
              child: Text(
                'Gallery',
                style: Styles.style50.copyWith(color: Colors.black38),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Image.asset('assets/images/Rectangle 12.png'),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Image.asset('assets/images/Ellipse 33.png'),
                              Image.asset(
                                'assets/images/Union.png',
                                width: 180.w,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Image.asset('assets/images/Rectangle 12.png'),
                  ],
                ),
                Stack(
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          width: double.infinity,
                          height: 270.h,
                        ),
                      ),
                    ),
                    BuildFormUser(),
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
