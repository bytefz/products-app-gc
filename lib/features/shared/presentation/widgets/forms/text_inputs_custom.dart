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
  });

  final String? hintText;
  final double? fontSizeHint;
  final Widget? icon;
  final Function(String value)? onChanged;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return TextFormField(
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
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
  });

  final String? hintText;
  final Function(String value)? onChanged;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
        icon: const Icon(Icons.lock_outline),
        iconColor: Colors.grey,
        fillColor: Colors.grey,
        focusColor: Theme.of(context).colorScheme.primary,
        prefixIconColor: Colors.grey,
      ),
    );
  }
}
