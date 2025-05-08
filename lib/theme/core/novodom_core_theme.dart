import 'package:flutter/material.dart';
import 'package:novodom_ds/core/novodom_theme.dart';
import 'package:novodom_ds/core/theme/redecor_assets_theme.dart';
import 'package:novodom_ds/core/theme/redecor_button_theme.dart';
import 'package:novodom_ds/core/theme/redecor_data_theme.dart';
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
  RedecorAssetsTheme get assetsTheme => RedecorAssetsTheme(
        add: 'packages/novodom_ds/assets/icons/add.svg',
        tickCircle: 'packages/novodom_ds/assets/icons/tick-circle.svg',
      );

  @override
  RedecorTextTheme get textTheme => RedecorTextTheme(
        p1Medium: const TextStyle(
          fontSize: 14,
          fontVariations: [
            FontVariation('wght', 500),
          ],
          height: 20 / 14,
        ),
        p2Medium: const TextStyle(
          fontSize: 12,
          fontVariations: [
            FontVariation('wght', 500),
          ],
          height: 18 / 13,
        ),
        linkS: const TextStyle(
          fontSize: 12,
          fontVariations: [
            FontVariation('wght', 500),
          ],
          height: 12 / 12,
        ),
      );

  @override
  RedecorButtonTheme buttonTheme = RedecorButtonTheme(
    positivGradientBakground: const LinearGradient(
      colors: <Color>[
        DefaultPalette.kGrayHintColor,
        DefaultPalette.kGrayIconColor,
      ],
      stops: <double>[0, 1.0],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );

  @override
  RedecorDataTheme get dataTheme => RedecorDataTheme(
        privacyPolicy: 'privacyPolicyUrl',
      );
}
