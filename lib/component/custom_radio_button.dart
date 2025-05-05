import 'package:flutter/material.dart';
import 'package:novodom_ds/core/novodom_theme.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
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
          border: value
              ? Border.all(
                  width: 7,
                  color: NovodomTheme(context).colorTheme.blackColor,
                )
              : null,
          color: value
              ? NovodomTheme(context).colorTheme.whiteColor
              : NovodomTheme(context).colorTheme.black5Color,
        ),
      ),
    );
  }
}
