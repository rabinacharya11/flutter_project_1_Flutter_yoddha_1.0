import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.color = Colors.black,
    this.radius,
    this.style,
    this.height,
    this.width,
  });

  final String buttonText;
  final Function() onTap;
  final Color color;
  final double? radius;
  final double? width;
  final double? height;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? 297,
        height: height ?? 64,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius ?? 40),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: style,
          ),
        ),
      ),
    );
  }
}
