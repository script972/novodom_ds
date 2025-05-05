import 'package:flutter/material.dart';

class RedecorTextTheme {
  RedecorTextTheme({
    required this.p1Medium,
    required this.linkS,
  });

  TextStyle p1Medium;
  TextStyle linkS;

  //method should return if passed style is in this theme
  bool containsStyle(TextStyle style) {
    return style == p1Medium || style == linkS;
  }
}
