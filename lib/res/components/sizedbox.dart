import 'package:flutter/material.dart';

extension SizeBoxExtention on num {
  SizedBox get sbh => SizedBox(
        height: toDouble(),
      );
  SizedBox get sbw => SizedBox(
        width: toDouble(),
      );
}
