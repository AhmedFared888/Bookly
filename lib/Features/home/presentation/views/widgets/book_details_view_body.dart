import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/Custom_book_image.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody(
      {super.key, required this.bookModel, required this.book});
  final BookModel bookModel;
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      children: [
                        const CustomBookDetailsAppBar(),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * .16),
                          child: CustomBookImage(
                            imageUrl: book.volumeInfo.imageLinks.thumbnail,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          book.volumeInfo.title!,
                          style: Styles.textStyle30
                              .copyWith(fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Opacity(
                          opacity: .7,
                          child: Text(book.volumeInfo.authors![0],
                              style: Styles.textStyle18.copyWith(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        BookRating(
                          reting: book.volumeInfo.averageRating ?? 0,
                          count: book.volumeInfo.ratingsCount ?? 0,
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        BooksActions(
                          bookModel: book,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'You can also like',
                            style: Styles.textStyle14.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                      ],
                    ),
                  ),
                  const SimilarBooksListView(),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
