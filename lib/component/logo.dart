import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:novodom_ds/index.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    this.mini = false,
  });

  final bool mini;

  @override
  Widget build(BuildContext context) {
    final theme = NovodomTheme(context);

    return AnimatedSwitcher(
      duration: theme.durationTheme.animationDuration,
      transitionBuilder: (child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      child: SvgPicture.asset(
        mini ? theme.assetsTheme.logoMini : theme.assetsTheme.logo,
        key: ValueKey(mini),
        colorFilter: ColorFilter.mode(
          theme.colorTheme.logo,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
