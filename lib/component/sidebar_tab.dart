import 'package:flutter/material.dart';
import 'package:novodom_ds/component/duotone_icon.dart';
import 'package:novodom_ds/core/novodom_theme.dart';

class SidebarTab extends StatefulWidget {
  const SidebarTab({
    super.key,
    required this.text,
    required this.duotoneIcon,
    required this.onTap,
    this.disabled = false,
    this.active = false,
    this.changeIconOrder = false,
    this.darkStyle = true,
  });

  final String text;
  final String duotoneIcon;
  final bool disabled;
  final bool active;
  final bool changeIconOrder;
  final bool darkStyle;
  final Function() onTap;

  @override
  State<SidebarTab> createState() => _SidebarTabState();
}

class _SidebarTabState extends State<SidebarTab> {
  bool _hovered = false;

  Color _childColor() {
    if (widget.disabled) {
      return NovodomTheme(context).colorTheme.tabTextDisabled;
    } else if (_hovered) {
      return NovodomTheme(context).colorTheme.tabTextHover;
    } else if (widget.active) {
      return NovodomTheme(context).colorTheme.tabTextActive;
    } else {
      return NovodomTheme(context).colorTheme.tabTextDefault;
    }
  }

  Color _bgColor() {
    if (widget.disabled) {
      return Colors.transparent;
    } else if (_hovered) {
      return NovodomTheme(context).colorTheme.tabBgHover;
    } else if (widget.active) {
      return NovodomTheme(context).colorTheme.tabBgActive;
    } else {
      return Colors.transparent;
    }
  }

  Color _duotoneBlackColor() {
    if (widget.disabled) {
      return NovodomTheme(context).colorTheme.tabIconBlackDisabled;
    } else if (_hovered) {
      return NovodomTheme(context).colorTheme.tabIconBlackHovered;
    } else if (widget.active) {
      return NovodomTheme(context).colorTheme.tabIconBlackActive;
    } else {
      return NovodomTheme(context).colorTheme.tabIconBlackDefault;
    }
  }

  Color _duotoneBlueColor() {
    if (widget.disabled) {
      return NovodomTheme(context).colorTheme.tabIconBlueDisabled;
    } else if (_hovered) {
      return NovodomTheme(context).colorTheme.tabIconBlueHovered;
    } else if (widget.active) {
      return NovodomTheme(context).colorTheme.tabIconBlueActive;
    } else {
      return NovodomTheme(context).colorTheme.tabIconBlueDefault;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.disabled
          ? null
          : () {
              setState(() {
                _hovered = false;
              });
              widget.onTap();
            },
      onHover: (value) {
        setState(() {
          _hovered = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        padding: const EdgeInsets.all(14),
        width: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: _bgColor(),
        ),
        child: Row(
          spacing: 8,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Opacity(
              opacity: widget.disabled ? 0.5 : 1,
              child: DuotoneIcon(
                duotoneIcon: widget.duotoneIcon,
                changeOrder: widget.changeIconOrder,
                iconBlackColor: _duotoneBlackColor(),
                iconBlueColor: _duotoneBlueColor(),
              ),
            ),
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 100),
              style: NovodomTheme(context).textTheme.linkM.copyWith(
                    color: _childColor(),
                  ),
              child: Text(
                widget.text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
