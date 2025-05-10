import 'package:flutter/material.dart';
import 'package:novodom_ds/core/theme/redecor_color_theme.dart';
import 'package:novodom_ds/default/default_palette.dart';
import 'package:novodom_ds/theme/core/novodom_core_theme.dart';

class NovodomCoreThemeLight extends NovodomCoreTheme {
  @override
  ThemeData get themeData {
    return ThemeData(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      fontFamily: 'WixMadeforText',
      colorScheme: const ColorScheme.light(
        brightness: Brightness.light,
        primary: DefaultPalette.kBlackTextColor,
        onPrimary: Colors.white,
        secondary: Color(0xFF03DAC6),
        onSecondary: Colors.black,
        surface: Colors.white,
        onSurface: Color(0xFF333333),
        error: Color(0xFFB00020),
        onError: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        shadowColor: Colors.black,
        color: DefaultPalette.kAppBarColor,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: DefaultPalette.orchidColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: DefaultPalette.black20Color),
          borderRadius: BorderRadius.circular(22),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DefaultPalette.black20Color),
          borderRadius: BorderRadius.circular(22),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(22),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DefaultPalette.tomatoColor),
          borderRadius: BorderRadius.circular(22),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DefaultPalette.tomatoColor),
          borderRadius: BorderRadius.circular(22),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DefaultPalette.black60Color),
          borderRadius: BorderRadius.circular(22),
        ),
      ),
    );
  }

  @override
  RedecorColorTheme get colorTheme => RedecorColorTheme(
        blackColor: const Color(0xFF130E14),
        black5Color: const Color(0xFF130E14).withValues(alpha: 0.05),
        black10Color: const Color(0xFF130E14).withValues(alpha: 0.1),
        black20Color: const Color(0xFF130E14).withValues(alpha: 0.2),
        black40Color: const Color(0xFF130E14).withValues(alpha: 0.4),
        black50Color: const Color(0xFF130E14).withValues(alpha: 0.5),
        black60Color: const Color(0xFF130E14).withValues(alpha: 0.6),
        black70Color: const Color(0xFF130E14).withValues(alpha: 0.7),
        whiteColor: const Color(0xFFFFFFFF),
        white10Color: const Color(0xFFFFFFFF).withValues(alpha: 0.1),
        white15Color: const Color(0xFFFFFFFF).withValues(alpha: 0.15),
        white20Color: const Color(0xFFFFFFFF).withValues(alpha: 0.2),
        white35Color: const Color(0xFFFFFFFF).withValues(alpha: 0.35),
        white50Color: const Color(0xFFFFFFFF).withValues(alpha: 0.5),
        tomatoColor: const Color(0xFFFF5B30),
        tomato50Color: const Color(0xFFFF5B30).withValues(alpha: 0.5),
        orchidColor: const Color(0xFF4958F2),
        violetColor: const Color(0xFFA332FA),
        smokeColor: const Color(0xFFECECEC),
        tabTextDefault: const Color(0xFF130E14),
        tabTextDisabled: const Color(0xFF130E14).withValues(alpha: 0.4),
        tabTextHover: const Color(0xFFFFFFFF),
        tabTextActive: const Color(0xFFFFFFFF),
        tabBgHover: const Color(0xFFA332FA),
        tabBgActive: const Color(0xFFFF5B30),
        tabIconBlackActive: const Color(0xFFFFFFFF),
        tabIconBlueActive: const Color(0xFFFFFFFF).withValues(alpha: 0.5),
        tabIconBlackHovered: const Color(0xFFFFFFFF),
        tabIconBlueHovered: const Color(0xFFFFFFFF).withValues(alpha: 0.5),
        tabIconBlackDefault: const Color(0xFF130E14),
        tabIconBlueDefault: const Color(0xFF4958F2),
        tabIconBlackDisabled: const Color(0xFF130E14),
        tabIconBlueDisabled: const Color(0xFF4958F2),
        logo: const Color(0xFF4958F2),
        btnTetriaryBgDefault: const Color(0xFF130E14).withValues(alpha: 0.05),
        btnTetriaryBgHover: const Color(0xFF130E14).withValues(alpha: 0.1),
        btnTetriaryBgActive: const Color(0xFF130E14).withValues(alpha: 0.1),
        btnTetriaryIconBlue:const Color(0xFF4958F2),
        btnTetriaryIconBlack: const Color(0xFF130E14),
      );
}
