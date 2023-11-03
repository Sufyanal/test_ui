import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_ui/res/color/colors.dart';
import 'package:test_ui/res/text/text.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      width: 320.h,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: AppColors.btnColor),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppText.view,
                style: TextStyle(color: AppColors.bgColor, fontSize: 16.sp),
              ),
              Icon(
                Icons.edit_square,
                color: AppColors.bgColor,
              )
            ],
          )),
    );
  }
}
