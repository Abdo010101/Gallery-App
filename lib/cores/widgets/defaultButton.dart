import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payments/cores/utils/styles.dart';

class DefalutButton extends StatelessWidget {
  const DefalutButton({super.key, required this.title, required this.onTap});
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50.sp,
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(14),
            shape: BoxShape.rectangle,
            color: Colors.blue), // const Color(0xff34A853)),
        child: Center(
          child: Text(
            title,
            style: Styles.style18,
          ),
        ),
      ),
    );
  }
}
