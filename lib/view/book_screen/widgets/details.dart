import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_ui/model/book_model.dart';
import 'package:test_ui/res/color/colors.dart';
import 'package:test_ui/res/components/sizedbox.dart';
import 'package:test_ui/res/text/text.dart';

class Details extends StatelessWidget {
  final Book? book;
  const Details({super.key, this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            book!.title!,
            style: TextStyle(
                color: AppColors.textColor,
                fontSize: 22.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
          ),
        ),
        20.h.sbh,
        Row(
          children: [
            20.h.sbw,
            Text(
              AppText.auther,
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            Text(
              book!.author!,
              style: TextStyle(
                  color: AppColors.ratingColor,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w200),
            ),
          ],
        ),
        Row(
          children: [
            20.h.sbw,
            Text(
              AppText.country,
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            Text(
              book!.country!,
              
              style: TextStyle(
                  color: AppColors.ratingColor,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w200),
            ),
          ],
        ),
        Row(
          children: [
            20.h.sbw,
            Text(
              AppText.language,
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            Text(
              book!.language!,
              style: TextStyle(
                  color: AppColors.ratingColor,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w200),
            ),
          ],
        ),
        Row(
          children: [
            20.h.sbw,
            Text(
              AppText.year,
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            Text(
              double.parse("${book!.year}").toString(),
              style: TextStyle(
                  color: AppColors.ratingColor,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w200),
            ),
          ],
        ),
        Row(
          children: [
            20.h.sbw,
            Text(
              AppText.page,
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            Text(
              double.parse("${book!.pages}").toString(),
              style: TextStyle(
                  color: AppColors.ratingColor,
                  fontSize: 16.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ],
    );
  }
}
