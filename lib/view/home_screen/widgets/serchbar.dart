import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_ui/model/book_model.dart';
import 'package:test_ui/res/color/colors.dart';
import 'package:test_ui/res/text/text.dart';

class Searchbar extends StatelessWidget {
  final List<Book> books;
  const Searchbar({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return TextField(
        controller: searchController,
        onChanged: (first) {
          if (books.isEmpty) {
            Text("data");
          }
          books.where((book) {
            return book.title!.toLowerCase().contains(first.toLowerCase());
          }).toList();
        },
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: AppColors.searchColor,
              ),
            ),
            hintText: AppText.search,
            hintStyle: TextStyle(
                color: AppColors.textColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
            fillColor: AppColors.searchbarColor,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.sp))));
  }
}
