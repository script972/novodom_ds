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
        logo: 'packages/novodom_ds/assets/icons/logo.svg',
        userPic: 'packages/novodom_ds/assets/icons/userPic.png',
        updates: 'packages/novodom_ds/assets/icons/updates.svg',
        icons16: Icons16(
          add: 'packages/novodom_ds/assets/icons/icons16/add.svg',
          lock: 'packages/novodom_ds/assets/icons/icons16/lock.svg',
          noPassed: 'packages/novodom_ds/assets/icons/icons16/no-passed.svg',
          passed: 'packages/novodom_ds/assets/icons/icons16/passed.svg',
          passed2: 'packages/novodom_ds/assets/icons/icons16/Passed2.svg',
          tickCircle:
              'packages/novodom_ds/assets/icons/icons16/tick-circle.svg',
          tip: 'packages/novodom_ds/assets/icons/icons16/Tip.svg',
        ),
        icons24: Icons24(
          arrowDown: 'packages/novodom_ds/assets/icons/icons24/Arrow-Down.svg',
          arrowLeft: 'packages/novodom_ds/assets/icons/icons24/Arrow-Left.svg',
          arrowRight:
              'packages/novodom_ds/assets/icons/icons24/Arrow-Right.svg',
          arrowUp: 'packages/novodom_ds/assets/icons/icons24/Arrow-Up.svg',
          check: 'packages/novodom_ds/assets/icons/icons24/Check.svg',
          close: 'packages/novodom_ds/assets/icons/icons24/Close.svg',
          dots: 'packages/novodom_ds/assets/icons/icons24/dots.svg',
          eyeClose: 'packages/novodom_ds/assets/icons/icons24/Eye-Close.svg',
          eyeOpen: 'packages/novodom_ds/assets/icons/icons24/Eye-Open.svg',
          placeholder:
              'packages/novodom_ds/assets/icons/icons24/Placeholder.svg',
          plus: 'packages/novodom_ds/assets/icons/icons24/Plus.svg',
          search: 'packages/novodom_ds/assets/icons/icons24/search.svg',
          shevronLeft:
              'packages/novodom_ds/assets/icons/icons24/Shevron-Left.svg',
          spinner: 'packages/novodom_ds/assets/icons/icons24/Spinner.svg',
        ),
        duotoneIcons: const DuotoneIcons(
          accent: 'packages/novodom_ds/assets/icons/duotoneIcons/accent',
          accentWall:
              'packages/novodom_ds/assets/icons/duotoneIcons/accent-wall',
          accessibility:
              'packages/novodom_ds/assets/icons/duotoneIcons/accessibility',
          arrowDownCircle:
              'packages/novodom_ds/assets/icons/duotoneIcons/arrow-down-circle',
          arrowLeftCircle:
              'packages/novodom_ds/assets/icons/duotoneIcons/arrow-left-circle',
          arrowRightCircle:
              'packages/novodom_ds/assets/icons/duotoneIcons/arrow-right-circle',
          arrowUpCircle:
              'packages/novodom_ds/assets/icons/duotoneIcons/arrow-up-circle',
          backSquare:
              'packages/novodom_ds/assets/icons/duotoneIcons/back-square',
          barChair: 'packages/novodom_ds/assets/icons/duotoneIcons/bar-chair',
          bath: 'packages/novodom_ds/assets/icons/duotoneIcons/bath',
          bed: 'packages/novodom_ds/assets/icons/duotoneIcons/bed',
          bell: 'packages/novodom_ds/assets/icons/duotoneIcons/bell',
          brush: 'packages/novodom_ds/assets/icons/duotoneIcons/brush',
          calendar: 'packages/novodom_ds/assets/icons/duotoneIcons/calendar',
          card: 'packages/novodom_ds/assets/icons/duotoneIcons/card',
          carousel: 'packages/novodom_ds/assets/icons/duotoneIcons/carousel',
          chair1: 'packages/novodom_ds/assets/icons/duotoneIcons/chair1',
          chat: 'packages/novodom_ds/assets/icons/duotoneIcons/chat',
          checkCircle:
              'packages/novodom_ds/assets/icons/duotoneIcons/check-circle',
          clipboard: 'packages/novodom_ds/assets/icons/duotoneIcons/clipboard',
          closeCircle:
              'packages/novodom_ds/assets/icons/duotoneIcons/close-circle',
          closet: 'packages/novodom_ds/assets/icons/duotoneIcons/closet',
          closet2: 'packages/novodom_ds/assets/icons/duotoneIcons/closet2',
          comment: 'packages/novodom_ds/assets/icons/duotoneIcons/comment',
          darkLight: 'packages/novodom_ds/assets/icons/duotoneIcons/dark-light',
          delete: 'packages/novodom_ds/assets/icons/duotoneIcons/delete',
          document: 'packages/novodom_ds/assets/icons/duotoneIcons/document',
          edit: 'packages/novodom_ds/assets/icons/duotoneIcons/edit',
          elementPlus:
              'packages/novodom_ds/assets/icons/duotoneIcons/element-plus',
          export: 'packages/novodom_ds/assets/icons/duotoneIcons/export',
          eyeOpen: 'packages/novodom_ds/assets/icons/duotoneIcons/eye-open',
          fail: 'packages/novodom_ds/assets/icons/duotoneIcons/fail',
          fridge: 'packages/novodom_ds/assets/icons/duotoneIcons/fridge',
          importIcon: 'packages/novodom_ds/assets/icons/duotoneIcons/import',
          layers: 'packages/novodom_ds/assets/icons/duotoneIcons/layers',
          legal: 'packages/novodom_ds/assets/icons/duotoneIcons/legal',
          logIn: 'packages/novodom_ds/assets/icons/duotoneIcons/log-in',
          logOut: 'packages/novodom_ds/assets/icons/duotoneIcons/log-out',
          moneySend: 'packages/novodom_ds/assets/icons/duotoneIcons/money-send',
          more: 'packages/novodom_ds/assets/icons/duotoneIcons/more',
          notebookSquare:
              'packages/novodom_ds/assets/icons/duotoneIcons/notebook-square',
          pallete: 'packages/novodom_ds/assets/icons/duotoneIcons/pallete',
          pdf: 'packages/novodom_ds/assets/icons/duotoneIcons/pdf',
          penTool: 'packages/novodom_ds/assets/icons/duotoneIcons/pen-tool',
          plan: 'packages/novodom_ds/assets/icons/duotoneIcons/plan',
          play: 'packages/novodom_ds/assets/icons/duotoneIcons/play',
          plusCircle:
              'packages/novodom_ds/assets/icons/duotoneIcons/plus-circle',
          question: 'packages/novodom_ds/assets/icons/duotoneIcons/question',
          refresh: 'packages/novodom_ds/assets/icons/duotoneIcons/refresh',
          ruler: 'packages/novodom_ds/assets/icons/duotoneIcons/ruler',
          rvt: 'packages/novodom_ds/assets/icons/duotoneIcons/rvt',
          send: 'packages/novodom_ds/assets/icons/duotoneIcons/send',
          signature: 'packages/novodom_ds/assets/icons/duotoneIcons/signature',
          success: 'packages/novodom_ds/assets/icons/duotoneIcons/success',
          userCircle:
              'packages/novodom_ds/assets/icons/duotoneIcons/user-circle',
          userHandUp:
              'packages/novodom_ds/assets/icons/duotoneIcons/user-hand-up',
          walls: 'packages/novodom_ds/assets/icons/duotoneIcons/walls',
        ),
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
        p1Semibold: const TextStyle(
          fontSize: 14,
          fontVariations: [
            FontVariation('wght', 600),
          ],
          height: 20 / 14,
        ),
        p2Semibold: const TextStyle(
          fontSize: 12,
          fontVariations: [
            FontVariation('wght', 600),
          ],
          height: 18 / 12,
        ),
        p2Bold: const TextStyle(
          fontSize: 12,
          fontVariations: [
            FontVariation('wght', 700),
          ],
          height: 18 / 12,
        ),
        linkM: const TextStyle(
          fontSize: 14,
          fontVariations: [
            FontVariation('wght', 600),
          ],
          height: 14 / 14,
        ),
        p2: const TextStyle(
          fontSize: 16,
          fontVariations: [
            FontVariation('wght', 400),
          ],
          height: 24 / 16,
        ),
        h1: const TextStyle(
          fontSize: 24,
          fontFamily: 'Montserrat',
          fontVariations: [
            FontVariation('wght', 700),
          ],
          height: 28 / 24,
        ),
        h2: const TextStyle(
          fontSize: 18,
          fontFamily: 'Montserrat',
          fontVariations: [
            FontVariation('wght', 700),
          ],
          height: 24 / 18,
        ),
        h3: const TextStyle(
          fontSize: 16,
          fontFamily: 'Montserrat',
          fontVariations: [
            FontVariation('wght', 700),
          ],
          height: 20 / 16,
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
