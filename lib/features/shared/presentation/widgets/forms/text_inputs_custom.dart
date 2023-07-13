import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class TextInputPrimary extends StatelessWidget {
  const TextInputPrimary({
    super.key,
    this.hintText,
    this.fontSizeHint,
    this.icon,
    this.onChanged,
    this.focusNode,
    this.inputFormatters,
    this.suffixIcon,
    this.obscureText,
  });

  final String? hintText;
  final double? fontSizeHint;
  final Widget? icon;
  final Function(String value)? onChanged;
  final FocusNode? focusNode;
  final Widget? suffixIcon;
  final bool? obscureText;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return TextFormField(
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: fontSizeHint ?? 16,
        ),
        icon: icon,
        iconColor: Colors.grey,
        fillColor: Colors.grey,
        focusColor: colors.primary,
        prefixIconColor: Colors.grey,
        suffixIcon: suffixIcon,
      ),
    );
  }
}

class TextInputSecondary extends StatelessWidget {
  const TextInputSecondary({
    super.key,
    this.onChanged,
    this.focusNode,
    this.inputFormatters,
    this.hintText,
    this.initialValue,
  });

  final String? hintText;
  final String? initialValue;
  final Function(String value)? onChanged;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return TextFormField(
      initialValue: initialValue,
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
        filled: true,
        fillColor: colors.primary.withOpacity(0.1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        focusColor: colors.primary,
      ),
    );
  }
}
