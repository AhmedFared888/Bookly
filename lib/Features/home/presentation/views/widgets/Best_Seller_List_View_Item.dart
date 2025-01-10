import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/constans.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 20.0, bottom: 20.0, right: 51.0, left: 30.0),
      child: SizedBox(
        height: 130.0,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      AssetsData.testImage,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 41.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .4,
                      child: Text(
                        'Harry Potter and the Goblet of Fire',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGtSectraFine),
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    const Text(
                      'J.K. Rowling',
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Row(
                      children: [
                        Text(
                          '19.99 €',
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        const BookRating(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
