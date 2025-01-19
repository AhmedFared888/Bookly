import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.reting,
      required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final int reting;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          //weight: 13.38,
          size: 16.5,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          reting.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 9,
        ),
        Text('($count)',
            style: Styles.textStyle14.copyWith(color: const Color(0xff707070)))
      ],
    );
  }
}
