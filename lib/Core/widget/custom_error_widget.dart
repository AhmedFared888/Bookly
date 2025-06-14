import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Center(
        child: Text(
          errMessage,
          style: Styles.textStyle18,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
