import 'package:flutter/material.dart';
import 'package:novodom_ds/default/default_palette.dart';
import 'package:novodom_ds/theme/core/novodom_core_theme.dart';

import '../../core/theme/redecor_color_theme.dart';

class NovodomCoreThemeDark extends NovodomCoreTheme {
  @override
  ThemeData get themeData {
    return ThemeData(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      fontFamily: 'WixMadeforText',
      colorScheme: const ColorScheme.dark(
        brightness: Brightness.dark,
        primary: DefaultPalette.kBlackTextColor,
        onPrimary: Colors.white,
        secondary: Color(0xFF03DAC6),
        onSecondary: Colors.black,
        surface: Color(0xFF333333),
        onSurface: Color(0xFFE0E0E0),
        error: Color(0xFFB00020),
        onError: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        shadowColor: Colors.black,
        color: DefaultPalette.kAppBarColor,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        // TODO(vh): add new input styles
        errorBorder: OutlineInputBorder(
            // borderSide: BorderSide(color: DefaultPalette.deepPurpleAccent),
            ),
        focusedErrorBorder: OutlineInputBorder(
            // borderSide:
            //     BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
            ),
        focusedBorder: OutlineInputBorder(
            // borderSide:
            //     BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
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
      );
}
