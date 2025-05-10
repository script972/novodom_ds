import 'package:flutter/material.dart';
import 'package:novodom_ds/index.dart';

class SquareThemedButton extends StatefulWidget {
  const SquareThemedButton({
    super.key,
    required this.active,
    required this.duotoneIcon,
    required this.onTap,
    this.showIndicator = false,
  });

  final bool active;
  final bool showIndicator;
  final String duotoneIcon;
  final Function() onTap;

  @override
  State<SquareThemedButton> createState() => _SquareThemedButtonState();
}

class _SquareThemedButtonState extends State<SquareThemedButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
        setState(() {
          _hovered = false;
        });
      },
      onHover: (value) {
        setState(() {
          _hovered = value;
        });
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 14,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: _hovered
                  ? NovodomTheme(context).colorTheme.btnTetriaryBgHover
                  : widget.active
                      ? NovodomTheme(context).colorTheme.btnTetriaryBgActive
                      : NovodomTheme(context).colorTheme.btnTetriaryBgDefault,
            ),
            child: DuotoneIcon(
              height: 24,
              duotoneIcon: widget.duotoneIcon,
              iconBlueColor:
                  NovodomTheme(context).colorTheme.btnTetriaryIconBlue,
              iconBlackColor:
                  NovodomTheme(context).colorTheme.btnTetriaryIconBlack,
            ),
          ),
          if (widget.showIndicator)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: NovodomTheme(context).colorTheme.tomatoColor,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
