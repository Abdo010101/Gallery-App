import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payments/cores/utils/styles.dart';

class Button1 extends StatelessWidget {
  const Button1(
      {super.key,
      this.color,
      required this.title,
      required this.onTap,
      this.width,
      this.imageString});
  final String title;
  final double? width;
  final String? imageString;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? double.infinity,
        height: 40.sp,
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(14),
            shape: BoxShape.rectangle,
            color: color ?? Colors.white54), // const Color(0xff34A853)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 6,
            ),
            Stack(alignment: Alignment.center, children: [
              Image(image: AssetImage('${imageString}')),
              Icon(
                Icons.upload,
                color: Colors.white,
              )
            ]),
            Text(
              title,
              style: Styles.style22,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
