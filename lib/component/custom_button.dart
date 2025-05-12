import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:novodom_ds/index.dart';

enum ButtonType {
  primary,
  secondary,
  tertiaryBlack,
  tertiaryWhite,
}

enum ButtonSize {
  s,
  m,
}

class CustomButton extends StatefulWidget {
  const CustomButton({
    required this.onTap,
    this.text,
    this.type = ButtonType.primary,
    this.size = ButtonSize.s,
    this.fullWidth = false,
    this.disabled = false,
    this.loading = false,
    this.changeIconOrder = false,
    this.icon,
    this.duotoneIcon,
    super.key,
  });

  final ButtonType type;
  final ButtonSize size;
  final String? text;
  final String? icon;
  final String? duotoneIcon;
  final bool fullWidth;
  final bool disabled;
  final bool loading;
  final bool changeIconOrder;
  final Future Function() onTap;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _hovered = false;
  bool _loading = false;

  Color _bgColor() {
    if (widget.disabled) {
      return _bgDisabledColor();
    } else {
      if (!_hovered || _loading) {
        return _bgEnabledColor();
      } else {
        return _bgHoveredColor();
      }
    }
  }

  Color _bgEnabledColor() {
    switch (widget.type) {
      case ButtonType.primary:
        return NovodomTheme(context).colorTheme.tomatoColor;
      case ButtonType.secondary:
        return NovodomTheme(context).colorTheme.whiteColor;
      case ButtonType.tertiaryBlack:
        return NovodomTheme(context).colorTheme.black5Color;
      case ButtonType.tertiaryWhite:
        return NovodomTheme(context).colorTheme.white10Color;
    }
  }

  Color _bgDisabledColor() {
    switch (widget.type) {
      case ButtonType.primary:
        return NovodomTheme(context).colorTheme.tomato50Color;
      case ButtonType.secondary:
        return NovodomTheme(context).colorTheme.whiteColor;
      case ButtonType.tertiaryBlack:
        return NovodomTheme(context).colorTheme.black5Color;
      case ButtonType.tertiaryWhite:
        return NovodomTheme(context).colorTheme.white20Color;
    }
  }

  Color _bgHoveredColor() {
    switch (widget.type) {
      case ButtonType.primary:
        return NovodomTheme(context).colorTheme.violetColor;
      case ButtonType.secondary:
        return NovodomTheme(context).colorTheme.blackColor;
      case ButtonType.tertiaryBlack:
        return NovodomTheme(context).colorTheme.black20Color;
      case ButtonType.tertiaryWhite:
        return NovodomTheme(context).colorTheme.white35Color;
    }
  }

  Color _childColor() {
    if (_loading) return Colors.transparent;
    if (widget.disabled) {
      return _childDisabledColor();
    } else {
      if (!_hovered || _loading) {
        return _childEnabledColor();
      } else {
        return _childHoveredColor();
      }
    }
  }

  Color _loaderColor() {
    switch (widget.type) {
      case ButtonType.primary || ButtonType.tertiaryWhite:
        return NovodomTheme(context).colorTheme.whiteColor;
      case ButtonType.secondary || ButtonType.tertiaryBlack:
        return NovodomTheme(context).colorTheme.orchidColor;
    }
  }

  Color _childEnabledColor() {
    switch (widget.type) {
      case ButtonType.primary:
        return NovodomTheme(context).colorTheme.whiteColor;
      case ButtonType.secondary:
        return NovodomTheme(context).colorTheme.blackColor;
      case ButtonType.tertiaryBlack:
        return NovodomTheme(context).colorTheme.blackColor;
      case ButtonType.tertiaryWhite:
        return NovodomTheme(context).colorTheme.whiteColor;
    }
  }

  Color _childDisabledColor() {
    switch (widget.type) {
      case ButtonType.primary:
        return NovodomTheme(context).colorTheme.whiteColor;
      case ButtonType.secondary:
        return NovodomTheme(context).colorTheme.black50Color;
      case ButtonType.tertiaryBlack:
        return NovodomTheme(context).colorTheme.black50Color;
      case ButtonType.tertiaryWhite:
        return NovodomTheme(context).colorTheme.white50Color;
    }
  }

  Color _childHoveredColor() {
    switch (widget.type) {
      case ButtonType.primary:
        return NovodomTheme(context).colorTheme.whiteColor;
      case ButtonType.secondary:
        return NovodomTheme(context).colorTheme.whiteColor;
      case ButtonType.tertiaryBlack:
        return NovodomTheme(context).colorTheme.blackColor;
      case ButtonType.tertiaryWhite:
        return NovodomTheme(context).colorTheme.whiteColor;
    }
  }

  EdgeInsets? _padding() {
    return widget.text == null
        ? EdgeInsets.all(
            widget.size == ButtonSize.s ? 6 : 10,
          )
        : const EdgeInsets.symmetric(
            horizontal: 30,
          );
  }

  ColorFilter? _colorFilter() {
    if (_loading) {
      return const ColorFilter.mode(
        Colors.transparent,
        BlendMode.srcIn,
      );
    }
    switch (widget.type) {
      case ButtonType.primary || ButtonType.tertiaryWhite:
        return ColorFilter.mode(
          _childColor(),
          BlendMode.srcIn,
        );
      case ButtonType.secondary:
        if (_hovered) {
          return ColorFilter.mode(
            _childColor(),
            BlendMode.srcIn,
          );
        } else {
          return null;
        }
      default:
        return null;
    }
  }

  Color? _duotoneBlackColor() {
    if (_loading) {
      return Colors.transparent;
    }
    switch (widget.type) {
      case ButtonType.primary || ButtonType.tertiaryWhite:
        return NovodomTheme(context).colorTheme.whiteColor;
      case ButtonType.secondary:
        if (_hovered) {
          return NovodomTheme(context).colorTheme.whiteColor;
        } else {
          return null;
        }
      default:
        return null;
    }
  }

  Color? _duotoneBlueColor() {
    if (_loading) {
      return Colors.transparent;
    }
    switch (widget.type) {
      case ButtonType.primary || ButtonType.tertiaryWhite:
        return NovodomTheme(context).colorTheme.white50Color;
      case ButtonType.secondary:
        if (_hovered) {
          return NovodomTheme(context).colorTheme.white50Color;
        } else {
          return null;
        }
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.text == null && widget.icon == null && widget.duotoneIcon == null) return const SizedBox();
    return InkWell(
      onTap: widget.disabled || _loading
          ? null
          : () async {
              setState(() {
                _loading = true;
                _hovered = false;
              });
              await widget.onTap();
              setState(() {
                _loading = false;
                _hovered = false;
              });
            },
      onHover: (value) {
        setState(() {
          _hovered = value;
        });
      },
      child: AnimatedContainer(
        height: widget.size == ButtonSize.s ? 36 : 44,
        duration: const Duration(milliseconds: 100),
        padding: _padding(),
        alignment: widget.fullWidth ? Alignment.center : null,
        decoration: BoxDecoration(
          shape: widget.text == null ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: widget.text == null ? null : BorderRadius.circular(22),
          color: _bgColor(),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              spacing: 8,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (widget.icon != null)
                  Opacity(
                    opacity: widget.disabled ? 0.5 : 1,
                    child: SvgPicture.asset(
                      widget.icon!,
                      height: 24,
                      colorFilter: _colorFilter(),
                    ),
                  )
                else if (widget.duotoneIcon != null)
                  Opacity(
                    opacity: widget.disabled ? 0.5 : 1,
                    child: DuotoneIcon(
                      duotoneIcon: widget.duotoneIcon!,
                      changeOrder: widget.changeIconOrder,
                      iconBlackColor: _duotoneBlackColor(),
                      iconBlueColor: _duotoneBlueColor(),
                    ),
                  ),
                if (widget.text != null)
                  Text(
                    widget.text!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: (widget.size == ButtonSize.s
                            ? NovodomTheme(context).textTheme.linkS
                            : NovodomTheme(context).textTheme.p1Medium)
                        .copyWith(
                      color: _childColor(),
                    ),
                  ),
              ],
            ),
            if (_loading)
              SizedBox(
                height: 16,
                width: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 1,
                  color: _loaderColor(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
