import 'package:flutter/material.dart';
import 'package:novodom_ds/index.dart';

enum StepTabType {
  passed,
  active,
  disabled,
  defaultt,
  updates,
}

class StepTab extends StatelessWidget {
  const StepTab({
    super.key,
    required this.text,
    required this.duotoneIcon,
    this.type = StepTabType.defaultt,
    this.changeIconOrder = false,
    required this.onTap,
  });

  final String text;
  final String duotoneIcon;
  final StepTabType type;
  final bool changeIconOrder;
  final Function() onTap;

  Color? _duotoneBlackColor(BuildContext context) {
    switch (type) {
      case StepTabType.active:
        return NovodomTheme(context).colorTheme.whiteColor;
      default:
        return null;
    }
  }

  Color? _duotoneBlueColor(BuildContext context) {
    switch (type) {
      case StepTabType.active:
        return NovodomTheme(context).colorTheme.white50Color;
      case StepTabType.defaultt || StepTabType.disabled:
        return NovodomTheme(context).colorTheme.black50Color;
      default:
        return null;
    }
  }

  Color? _bgColor(BuildContext context) {
    switch (type) {
      case StepTabType.passed || StepTabType.updates:
        return NovodomTheme(context).colorTheme.whiteColor;
      case StepTabType.active:
        return NovodomTheme(context).colorTheme.tomatoColor;
      default:
        return null;
    }
  }

  Color _borderColor(BuildContext context) {
    return _bgColor(context) == null
        ? NovodomTheme(context).colorTheme.black10Color
        : Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: _bgColor(context),
        border: Border.all(
          color: _borderColor(context),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: type == StepTabType.disabled ? 0.5 : 1,
            child: DuotoneIcon(
              duotoneIcon: duotoneIcon,
              changeOrder: changeIconOrder,
              iconBlackColor: _duotoneBlackColor(context),
              iconBlueColor: _duotoneBlueColor(context),
            ),
          ),
        ],
      ),
    );
  }
}
