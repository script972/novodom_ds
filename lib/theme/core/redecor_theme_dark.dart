import 'package:flutter/material.dart';
import 'package:novodom_ds/core/redecor_theme.dart';
import 'package:novodom_ds/core/theme/redecor_text_theme.dart';
import 'package:novodom_ds/default/default_palette.dart';
import 'package:novodom_ds/theme/core/redecor_core_theme.dart';

import '../../core/theme/redecor_assets_theme.dart';
import '../../core/theme/redecor_color_theme.dart';


class NovodomCoreThemeDark extends NovodomCoreTheme {
  @override
  ThemeData get themeData {
    return ThemeData(
      colorScheme: const ColorScheme.dark(
        brightness: Brightness.dark,
        primary: DefaultPalette.pinkAccent,
        onPrimary: Colors.white,
        secondary: Color(0xFF03DAC6),
        onSecondary: Colors.black,
        background: Color(0xFF121212),
        onBackground: Color(0xFFE0E0E0),
        surface: Color(0xFF333333),
        onSurface: Color(0xFFE0E0E0),
        error: Color(0xFFB00020),
        onError: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        shadowColor: Colors.black,
        color: DefaultPalette.pinkAccent,
      ),
      iconTheme: const IconThemeData(color: DefaultPalette.deepPurpleAccent),
      inputDecorationTheme: const InputDecorationTheme(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DefaultPalette.deepPurpleAccent),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w700,
          height: 64 / 57,
          fontSize: 57,
        ),
        // IMPLEMENTED
        displayMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w700,
          fontSize: 45,
          height: 52 / 45,
        ),
        displaySmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w700,
          fontSize: 36,
          height: 44 / 36,
        ),
        headlineLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w700,
          height: 44 / 32,
          fontSize: 32,
        ),
        headlineMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          fontSize: 28,
          height: 40 / 28,
        ),
        headlineSmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w700,
          height: 36 / 24,
          fontSize: 24,
        ),
        titleLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w600,
          height: 24 / 18,
          fontSize: 18,
        ),
        titleMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w600,
          fontSize: 16,
          height: 24 / 16,
        ),
        titleSmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w600,
          fontSize: 14,
          height: 20 / 14,
        ),
        labelLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          height: 20 / 14,
        ),
        labelMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w500,
          fontSize: 12,
          height: 18 / 12,
        ),
        labelSmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontSize: 11,
          fontWeight: FontWeight.w500,
          height: 16 / 11,
        ),
        bodyLarge: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          height: 24 / 16,
        ),
        bodyMedium: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          height: 20 / 14,
        ),
        bodySmall: TextStyle(
          color: DefaultPalette.whiteBackground,
          fontWeight: FontWeight.w400,
          fontSize: 12,
          height: 18 / 12,
        ),
      )/*.apply(fontFamily: FontFamily.roboto)*/,
    );
  }

  @override
  RedecorAssetsTheme get assetsTheme => RedecorAssetsTheme(logoImage: 'logo/', envelopeImage: 'envelope');

  @override
  RedecorColorTheme get colorTheme => RedecorColorTheme(gray1Color: Colors.grey, grayColor: Colors.indigo);

  @override
  // TODO: implement textTheme
  RedecorTextTheme get textTheme => throw UnimplementedError();
}