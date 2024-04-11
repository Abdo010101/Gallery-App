import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payments/cores/DioManager/di.dart';
import 'package:payments/cores/widgets/Custom_text_field.dart';
import 'package:payments/cores/widgets/defaultButton.dart';
import 'package:payments/features/login_feature/presentation/views/login/login_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payments/features/login_feature/presentation/views/widgets/homeScreen.dart';

class BuildFormUser extends StatelessWidget {
  BuildFormUser({super.key});

  final TextEditingController userName = TextEditingController();
  final TextEditingController passwrod = TextEditingController();
  LoginCubit loginCubit = getIt.get<LoginCubit>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      bloc: loginCubit,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              CustomeTextFiled(
                textEditingController: userName,
                hinText: "User Name",
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomeTextFiled(
                textEditingController: passwrod,
                textInputType: TextInputType.visiblePassword,
                hinText: "Password",
              ),
              SizedBox(
                height: 30.h,
              ),
              BlocBuilder<LoginCubit, LoginState>(
                bloc: loginCubit,
                builder: (context, state) {
                  return state is LoginLoading
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(horizontal: 60.w),
                          child: DefalutButton(
                            title: "Submit",
                            onTap: () async {
                              await loginCubit
                                  .userLoginCubit(
                                      email: userName.text.toString(),
                                      password: passwrod.text.toString())
                                  .then((value) {
                                if (value != null)
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                              });
                            },
                          ),
                        );
                },
              )
            ],
          ),
        );
      },
    );
  }
}
