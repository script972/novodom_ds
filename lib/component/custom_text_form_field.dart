import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:novodom_ds/index.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.label,
    this.hint,
    this.helper,
    this.initialValue,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLength,
    this.focusNode,
    this.keyboardType,
    this.onChanged,
    this.onEditingComplete,
    this.onTap,
    this.onTapOutside,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.autofillHints,
    this.inputFormatters,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.maxLines = 1,
    this.obscureText = false,
    this.autofocus = false,
    this.enabled = true,
    this.readOnly = false,
    this.readOnlyWithEnabledStyle = false,
    this.textCapitalization = TextCapitalization.none,
  });

  final String? label;
  final String? hint;
  final String? helper;
  final String? initialValue;
  final TextEditingController? controller;
  final bool obscureText;
  final bool enabled;
  final bool readOnly;
  final bool readOnlyWithEnabledStyle;
  final bool autofocus;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int maxLines;
  final int? maxLength;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final Function(String)? onChanged;
  final Function()? onTap;
  final Function(PointerDownEvent)? onTapOutside;
  final Function()? onEditingComplete;
  final Function(String)? onFieldSubmitted;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final Iterable<String>? autofillHints;
  final AutovalidateMode autovalidateMode;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  String? _error;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              widget.label!,
              style: NovodomTheme(context).textTheme.p2Medium.copyWith(
                    color: NovodomTheme(context).colorTheme.black60Color,
                  ),
            ),
          ),
        TextFormField(
          style: NovodomTheme(context).textTheme.p1Medium,
          controller: widget.controller,
          autovalidateMode: widget.autovalidateMode,
          inputFormatters: widget.inputFormatters,
          autofillHints: widget.autofillHints,
          obscureText: widget.obscureText,
          enabled: widget.enabled,
          readOnly: widget.readOnly || widget.readOnlyWithEnabledStyle,
          cursorErrorColor: NovodomTheme(context).colorTheme.tomatoColor,
          cursorWidth: 1,
          maxLines: widget.maxLines,
          maxLength: widget.maxLength,
          initialValue: widget.initialValue,
          focusNode: widget.focusNode,
          autofocus: widget.autofocus,
          keyboardType: widget.keyboardType,
          textCapitalization: widget.textCapitalization,
          onEditingComplete: widget.onEditingComplete,
          onChanged: widget.onChanged,
          onTap: widget.onTap,
          onTapOutside: widget.onTapOutside,
          onFieldSubmitted: widget.onFieldSubmitted,
          onSaved: widget.onSaved,
          validator: (value) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (widget.validator != null) {
                setState(() {
                  _error = widget.validator!(value);
                });
              }
            });
            return widget.validator != null ? widget.validator!(value) : null;
          },
          decoration: InputDecoration(
            suffixIconConstraints: const BoxConstraints(
              maxHeight: 24,
            ),
            counter: const SizedBox(),
            prefixIconConstraints: const BoxConstraints(
              maxHeight: 24,
            ),
            suffixIcon: widget.suffixIcon != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: widget.suffixIcon,
                  )
                : null,
            prefixIcon: Padding(
              padding: EdgeInsets.only(
                  left: 20, right: widget.prefixIcon != null ? 14 : 0),
              child: widget.prefixIcon,
            ),
            contentPadding: const EdgeInsets.fromLTRB(0, 12, 14, 12),
            hintText: widget.hint,
            filled: widget.readOnly || !widget.enabled,
            fillColor: NovodomTheme(context).colorTheme.black5Color,
            hintStyle: NovodomTheme(context).textTheme.p1Medium.copyWith(
                  color: widget.readOnly
                      ? NovodomTheme(context).colorTheme.black60Color
                      : !widget.enabled
                          ? NovodomTheme(context).colorTheme.black40Color
                          : NovodomTheme(context).colorTheme.black20Color,
                ),
            errorStyle: NovodomTheme(context).textTheme.p2Medium.copyWith(
                  color: NovodomTheme(context).colorTheme.tomatoColor,
                ),
          ),
        ),
        if (widget.helper != null && _error == null)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              widget.helper!,
              style: NovodomTheme(context).textTheme.p2Medium.copyWith(
                    color: NovodomTheme(context).colorTheme.black60Color,
                  ),
            ),
          ),
      ],
    );
  }
}
