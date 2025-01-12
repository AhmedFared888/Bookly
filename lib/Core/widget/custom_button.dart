import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.title,
  });

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            ),
          ),
          child: Text(
            title,
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          )),
    );
  }
}
