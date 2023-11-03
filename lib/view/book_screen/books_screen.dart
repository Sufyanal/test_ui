import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_ui/model/book_model.dart';
import 'package:test_ui/res/color/colors.dart';
import 'package:test_ui/res/components/sizedbox.dart';
import 'package:test_ui/res/text/text.dart';
import 'package:test_ui/view/book_screen/widgets/book_details.dart';
import 'package:test_ui/view/book_screen/widgets/details.dart';
import 'package:test_ui/view/book_screen/widgets/view_detail_button.dart';

class BookScreen extends StatefulWidget {
  final Book? book;
  const BookScreen({super.key, required this.book});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DetailsCard(
                book: widget.book,
              ),
              10.h.sbh,
              Details(
                book: widget.book,
              ),
              20.h.sbh,
              Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10).w,
                  child: Button()),
              20.h.sbh
            ],
          ),
        ),
      ),
    ));
  }
}
