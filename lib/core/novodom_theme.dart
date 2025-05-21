import 'package:flutter/material.dart';
import 'package:novodom_ds/core/theme/redecor_assets_theme.dart';
import 'package:novodom_ds/core/theme/redecor_button_theme.dart';
import 'package:novodom_ds/core/theme/redecor_color_theme.dart';
import 'package:novodom_ds/core/theme/redecor_data_theme.dart';
import 'package:novodom_ds/core/theme/redecor_duration_theme.dart';
import 'package:novodom_ds/core/theme/redecor_shadow_theme.dart';
import 'package:novodom_ds/core/theme/redecor_size_theme.dart';
import 'package:novodom_ds/core/theme/redecor_text_theme.dart';
import 'package:novodom_ds/core/theme_container.dart';
import 'package:value_provider/value_provider.dart';

abstract class NovodomTheme {
  factory NovodomTheme(BuildContext context) {
    //TODO(denisM): logic for implement theme determine
    final themeMode = ValueProvider
        .of<ThemeMode>(context)
        .value;
    switch (themeMode) {
      case ThemeMode.light:
        return ThemeFactory.lightTheme;
      case ThemeMode.dark:
        return ThemeFactory.darkTheme;
      default:
        if (MediaQuery
            .of(context)
            .platformBrightness == Brightness.dark) {
          return ThemeFactory.darkTheme;
        } else {
          return ThemeFactory.lightTheme;
        }
    }
  }

  ThemeData get themeData;

  RedecorColorTheme get colorTheme;

  RedecorSizeTheme get sizeTheme;

  RedecorAssetsTheme get assetsTheme;

  RedecorTextTheme get textTheme;

  RedecorShadowTheme get shadowTheme;

  RedecorButtonTheme get buttonTheme;

  RedecorDataTheme get dataTheme;

  RedecorDurationTheme get durationTheme;

}
