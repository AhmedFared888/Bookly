import 'package:bookly/Core/utils/app_router.dart';
import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/Custom_book_image.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/constans.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 51.0, left: 30.0),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context)
              .push(AppRouter.kBookDetailsView, extra: bookModel);
        },
        child: SizedBox(
          height: 130.0,
          child: Row(
            children: [
              CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
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
                          bookModel.volumeInfo.title!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle20
                              .copyWith(fontFamily: kGtSectraFine),
                        ),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        bookModel.volumeInfo.authors![0],
                        style: Styles.textStyle14,
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Free',
                            style: Styles.textStyle20.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          BookRating(
                            reting: bookModel.volumeInfo.averageRating ?? 5,
                            count: bookModel.volumeInfo.ratingsCount ?? 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
