import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    this.child,
    this.color,
    this.textColor,
    this.borderRadius: 2.0,
    this.onPressed,
  });

  final Widget child;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      style: ElevatedButton.styleFrom(
        primary: color,
        onPrimary: textColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
