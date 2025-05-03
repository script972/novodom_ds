import 'package:flutter/material.dart';
import 'package:novodom_ds/core/theme/redecor_text_theme.dart';

class RedText extends Text {
  RedText(
    super.data, {
    super.key,
    required TextStyle style,
    required RedecorTextTheme textTheme,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.maxLines,
    super.textScaleFactor,
    super.semanticsLabel,
  })  : assert(
          textTheme.containsStyle(style),
          'The provided TextStyle is not defined in the RedecorTextTheme.',
        ),
        super(style: style);
}
