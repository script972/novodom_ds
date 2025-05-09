// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class RedecorTextTheme {
  TextStyle p1Medium;
  TextStyle p1Semibold;
  TextStyle p2Semibold;
  TextStyle p2Medium;
  TextStyle p2Bold;
  TextStyle linkS;
  TextStyle linkM;
  TextStyle p2;
  TextStyle h1;
  TextStyle h2;
  TextStyle h3;

  RedecorTextTheme({
    required this.p1Medium,
    required this.p1Semibold,
    required this.p2Semibold,
    required this.p2Medium,
    required this.p2Bold,
    required this.linkS,
    required this.linkM,
    required this.p2,
    required this.h1,
    required this.h2,
    required this.h3,
  });

  //method should return if passed style is in this theme
  bool containsStyle(TextStyle style) {
    return style == p1Medium || style == linkS;
  }
}
