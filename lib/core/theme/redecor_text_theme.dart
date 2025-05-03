import 'package:flutter/material.dart';

class RedecorTextTheme {
  //TODO(denisM): this properties should be removed
  final TextStyle crossedText;
  final TextStyle light;
  final TextStyle h2;

  RedecorTextTheme({
    required this.crossedText,
    required this.light,
    required this.h2,
  });

  //method should return if passed style is in this theme
  bool containsStyle(TextStyle style) {
    return style == crossedText || style == light || style == h2;
  }
}
