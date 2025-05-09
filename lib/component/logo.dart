import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:novodom_ds/index.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      NovodomTheme(context).assetsTheme.logo,
      colorFilter: ColorFilter.mode(
        NovodomTheme(context).colorTheme.logo,
        BlendMode.srcIn,
      ),
    );
  }
}
