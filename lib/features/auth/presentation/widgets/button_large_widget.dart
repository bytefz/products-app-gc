import 'package:flutter/material.dart';

class ButtonLargeWidget extends StatelessWidget {
  const ButtonLargeWidget({
    super.key,
    required this.onPressed,
    this.child,
    this.color,
  });

  final Widget? child;
  final Color? color;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colors = Theme.of(context).colorScheme;

    return FilledButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? colors.primary,
        minimumSize: Size(size.width, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: child ?? Container(),
    );
  }
}
