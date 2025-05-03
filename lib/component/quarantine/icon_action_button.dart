import 'package:flutter/material.dart';
import 'package:novodom_ds/core/redecor_theme.dart';

//TODO(denisM): Steps:
// 1. Linked with RedecorTheme
// 2. Open textStyle as interface of constructor
class IconActionButton extends StatefulWidget {
  const IconActionButton({
    required this.title,
    this.icon,
    this.suffixIcon,
    this.content,
    this.textColor,
    this.fontSize,
    this.fontWeight = FontWeight.w500,
    this.letterSpacing = -0.5,
    this.textShadow,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 28.0),
    this.activeGradient,
    this.disabledColor,
    this.centerContent = true,
    this.centerTitle = false,
    this.onPressed,
    this.onLongPressed,
    this.onDisabledPressed,
    this.borderRadius,
    this.border,
    this.boxShadow,
    this.scaleOnTap = true,
    this.shouldSplash = true,
    this.focusColor,
    this.highlightColor,
    this.hoverColor,
    this.disabled = false,
    this.isTintWhenDisabled = true,
    super.key,
  });

  final String title;
  final Widget? icon;
  final Widget? suffixIcon;
  final Widget? content;
  final Color? textColor;
  final double? fontSize;
  final FontWeight fontWeight;
  final double letterSpacing;
  final Shadow? textShadow;
  final EdgeInsets contentPadding;
  final Gradient? activeGradient;
  final Color? disabledColor;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;
  final VoidCallback? onDisabledPressed;
  final bool centerContent;
  final bool centerTitle;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final bool scaleOnTap;
  final bool shouldSplash;
  final Color? focusColor;
  final Color? highlightColor;
  final Color? hoverColor;
  final bool disabled;
  final bool isTintWhenDisabled;

  @override
  _IconActionButtonState createState() => _IconActionButtonState();
}

class _IconActionButtonState extends State<IconActionButton> with SingleTickerProviderStateMixin {
  late AnimationController _tapAnimationController;
  late Animation<double> _scaleAnimation;

  void _setupTapAnimation() {
    _tapAnimationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1, end: 1 - (widget.scaleOnTap ? 0.05 : 0.0))
        .animate(CurvedAnimation(curve: Curves.easeInOut, parent: _tapAnimationController));
  }

  void _disposeAnimations() {
    _tapAnimationController.dispose();
  }

  @override
  void initState() {
    super.initState();
    _setupTapAnimation();
  }

  @override
  void dispose() {
    _disposeAnimations();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final BorderRadius borderRadius = widget.borderRadius ?? BorderRadius.circular(30.0);
    final Widget contentWidget =
        widget.content ?? ((widget.icon == null && widget.suffixIcon == null) ? _buildText() : _buildIconsAndText());

    return AbsorbPointer(
      absorbing: widget.disabled,
      child: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (_, Widget? child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: child,
          );
        },
        child: ClipRRect(
          borderRadius: borderRadius,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: widget.boxShadow,
              border: widget.border,
              borderRadius: borderRadius,
              color: widget.onPressed == null ? widget.disabledColor : null,
              gradient: widget.onPressed != null ? widget.activeGradient : null,
            ),
            child: Material(
              color: Colors.white,
              type: MaterialType.transparency,
              borderRadius: borderRadius,
              child: InkWell(
                splashColor: widget.shouldSplash ? Colors.white.withOpacity(0.8) : Colors.transparent,
                focusColor: widget.focusColor,
                highlightColor: widget.highlightColor,
                hoverColor: widget.hoverColor,
                borderRadius: borderRadius,
                onLongPress: widget.onLongPressed,
                onTap: () {
                  _tapAnimationController.reverse();
                  if (widget.onPressed != null) {
                    widget.onPressed!();
                  } else if (widget.onDisabledPressed != null) widget.onDisabledPressed!();
                },
                onTapDown: (_) => _tapAnimationController.forward(),
                onTapCancel: () => _tapAnimationController.reverse(),
                child: Padding(
                  padding: widget.contentPadding,
                  child: widget.centerContent
                      ? Center(child: contentWidget)
                      : Align(
                          alignment: Alignment.centerLeft,
                          child: contentWidget,
                        ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildText() {
    return FittedBox(
      child: Text(
        widget.title,
        maxLines: 1,
        style: TextStyle(
          fontFamily: 'Rubik',
          shadows: widget.onPressed != null
              ? [widget.textShadow ?? NovodomTheme(context).shadowTheme.textShadowProminent]
              : null,
          letterSpacing: widget.letterSpacing,
          fontSize: widget.fontSize,
          color: widget.isTintWhenDisabled
              ? widget.onPressed != null
                  ? widget.textColor
                  : const Color(0xffC3C5CA)
              : widget.textColor,
          fontWeight: widget.fontWeight,
        ),
      ),
    );
  }

  Widget _buildIconsAndText() {
    Widget text = _buildText();
    if (widget.centerTitle) {
      text = Expanded(
        child: Center(
          child: text,
        ),
      );
    } else {
      text = Flexible(
        child: text,
      );
    }
    return Row(
      mainAxisSize: widget.centerTitle ? MainAxisSize.max : MainAxisSize.min,
      children: [
        if (widget.icon != null) widget.icon!,
        text,
        if (widget.suffixIcon != null) widget.suffixIcon!,
        if (widget.suffixIcon == null && widget.centerTitle) const SizedBox.square(dimension: 24),
      ],
    );
  }
}
