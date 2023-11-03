import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_ui/model/book_model.dart';
import 'package:test_ui/res/color/colors.dart';
import 'package:test_ui/res/components/sizedbox.dart';
import 'package:test_ui/res/text/text.dart';

class DetailsCard extends StatelessWidget {
  final Book? book;
  const DetailsCard({super.key, this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430.h,
      width: 275.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.bgColor,
          boxShadow: [
            BoxShadow(
                blurStyle: BlurStyle.normal,
                blurRadius: 3,
                color: AppColors.ratingColor,
                offset: Offset(4, 4))
          ]),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                height: 325.h,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    book!.imageLink!,
                    fit: BoxFit.cover,
                  ),
                )),
            5.h.sbh,
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          AppText.rating,
                          style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      5.h.sbh,
                      RatingBar(
                          initialRating: double.parse(book!.rating.toString()),
                          ignoreGestures: true,
                          itemSize: 15,
                          ratingWidget: RatingWidget(
                            full: Icon(
                              Icons.star,
                              color: AppColors.starColor,
                            ),
                            half: Icon(
                              Icons.star,
                              color: AppColors.starColor,
                            ),
                            empty: Icon(
                              Icons.star,
                              color: AppColors.ratingColor,
                            ),
                          ),
                          onRatingUpdate: ((value) {})),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          AppText.reviews,
                          style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      5.h.sbh,
                      Text(
                        "${book!.reviews}",
                        style: TextStyle(
                            color: AppColors.ratingColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          AppText.price,
                          style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      5.h.sbh,
                      Text(
                        "\$${book!.price}",
                        style: TextStyle(
                            color: AppColors.ratingColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
