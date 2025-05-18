import 'package:flutter/material.dart';
import 'package:novodom_ds/core/novodom_theme.dart';
import 'package:novodom_ds/index.dart';

class RadioButtonTab extends StatelessWidget {
  const RadioButtonTab({
    super.key,
    required this.text,
    required this.selected,
    required this.onTap,
    this.disabled = false,
  });

  final String text;
  final bool selected;
  final bool disabled;
  final Function(bool) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: disabled ? null : () => onTap(!selected),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 44,
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: selected && !disabled
                    ? NovodomTheme(context).colorTheme.blackColor
                    : NovodomTheme(context).colorTheme.black10Color,
              ),
              borderRadius: BorderRadius.circular(16),
              color: selected && !disabled
                  ? NovodomTheme(context).colorTheme.whiteColor
                  : null,
            ),
            child: Text(
              text,
              style: NovodomTheme(context).textTheme.p1Semibold.copyWith(
                    color: NovodomTheme(context).colorTheme.blackColor,
                  ),
            ),
          ),
          Positioned(
            right: 8,
            top: 8,
            child: AnimatedScale(
              duration: NovodomTheme(context).durationTheme.animationDuration,
              scale: selected && !disabled ? 1 : 0,
              child: CustomRadioButton(
                selected: true,
                onTap: (_) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
