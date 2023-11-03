import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Appbar {
  final String name;
  final dynamic actions;

  Appbar({this.name = '', required this.actions});

  appbar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      actions: [actions],
      title: Text(
        name,
        style: TextStyle(
            fontSize: 18.sp,
            fontFamily: 'Phoppins',
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
