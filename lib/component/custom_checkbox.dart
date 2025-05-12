import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novodom_ds/core/novodom_theme.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    required this.value,
    required this.onTap,
    this.disabled = false,
    super.key,
  });

  final bool value;
  final bool disabled;
  final Function(bool) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: disabled ? null : () => onTap(!value),
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: value
              ? NovodomTheme(context).colorTheme.blackColor
              : NovodomTheme(context).colorTheme.black10Color,
        ),
        child: value
            ? SvgPicture.asset(
                NovodomTheme(context).assetsTheme.icons16.tickCircle,
                height: 16,
              )
            : SvgPicture.asset(
                NovodomTheme(context).assetsTheme.icons16.add,
                height: 16,
                colorFilter: disabled
                    ? ColorFilter.mode(
                        NovodomTheme(context).colorTheme.black20Color,
                        BlendMode.srcIn,
                      )
                    : null,
              ),
      ),
    );
  }
}
