import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novodom_ds/index.dart';

enum StepTabState {
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
    this.type = StepTabState.defaultt,
    this.changeIconOrder = false,
    required this.onTap,
  });

  final String text;
  final String duotoneIcon;
  final StepTabState type;
  final bool changeIconOrder;
  final Function() onTap;

  Color? _duotoneBlackColor(BuildContext context) {
    switch (type) {
      case StepTabState.active:
        return NovodomTheme(context).colorTheme.whiteColor;
      default:
        return null;
    }
  }

  Color? _duotoneBlueColor(BuildContext context) {
    switch (type) {
      case StepTabState.active:
        return NovodomTheme(context).colorTheme.white50Color;
      case StepTabState.defaultt || StepTabState.disabled:
        return NovodomTheme(context).colorTheme.black50Color;
      default:
        return null;
    }
  }

  Color? _textColor(BuildContext context) {
    switch (type) {
      case StepTabState.active:
        return NovodomTheme(context).colorTheme.whiteColor;
      default:
        return NovodomTheme(context).colorTheme.blackColor;
    }
  }

  Color? _bgColor(BuildContext context) {
    switch (type) {
      case StepTabState.passed || StepTabState.updates:
        return NovodomTheme(context).colorTheme.whiteColor;
      case StepTabState.active:
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
    return InkWell(
      onTap: type == StepTabState.disabled ? null : onTap,
      child: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: _bgColor(context),
              border: Border.all(
                color: _borderColor(context),
              ),
            ),
            child: Opacity(
              opacity: type == StepTabState.disabled ? 0.5 : 1,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 8,
                children: [
                  DuotoneIcon(
                    duotoneIcon: duotoneIcon,
                    changeOrder: changeIconOrder,
                    iconBlackColor: _duotoneBlackColor(context),
                    iconBlueColor: _duotoneBlueColor(context),
                  ),
                  if (type != StepTabState.passed)
                    Text(
                      text,
                      style:
                          NovodomTheme(context).textTheme.p1Semibold.copyWith(
                                color: _textColor(context),
                              ),
                    ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: AnimatedScale(
              duration: const Duration(milliseconds: 200),
              scale: type == StepTabState.passed || type == StepTabState.updates
                  ? 1
                  : 0,
              child: SvgPicture.asset(
                type == StepTabState.updates
                    ? NovodomTheme(context).assetsTheme.updated
                    : NovodomTheme(context).assetsTheme.passed,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
