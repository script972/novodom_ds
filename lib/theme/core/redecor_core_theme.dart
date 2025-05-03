import 'package:flutter/material.dart';
import 'package:novodom_ds/core/redecor_theme.dart';
import 'package:novodom_ds/core/theme/redecor_button_theme.dart';
import 'package:novodom_ds/core/theme/redecor_shadow_theme.dart';
import 'package:novodom_ds/core/theme/redecor_size_theme.dart';
import 'package:novodom_ds/core/theme/redecor_text_theme.dart';
import 'package:novodom_ds/default/default_palette.dart';

abstract class NovodomCoreTheme implements NovodomTheme {
  @override
  RedecorSizeTheme sizeTheme = RedecorSizeTheme(
    iconSize: 36.0,
    buttonBorderRadius: 12.0,
  );

  @override
  RedecorShadowTheme shadowTheme = RedecorShadowTheme(
    textShadowProminent: const Shadow(
      offset: Offset(0.0, 1.0),
      blurRadius: 4.0,
      color: Color.fromRGBO(0, 0, 0, 0.25),
    ),
  );

  @override
  RedecorTextTheme get textTheme => RedecorTextTheme(
        crossedText: TextStyle(
          fontFamilyFallback: <String>["sans-serif"],
          fontSize: 10.0,
          color: DefaultPalette.colorForCrossedText,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w700,
          height: 1.2,
        ),
        //TODO: update
        light: TextStyle(
          fontFamily: "Rubik",
          fontFamilyFallback: <String>["sans-serif"],
          fontWeight: FontWeight.w300,
        ),
        //TODO: update
        h2: TextStyle(),
      );

  @override
  RedecorButtonTheme buttonTheme = RedecorButtonTheme(
    positivGradientBakground: const LinearGradient(
      colors: <Color>[
        DefaultPalette.colorGreen,
        DefaultPalette.colorGreen,
      ],
      stops: <double>[0, 1.0],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );
}
