import 'package:bookly/Features/home/presentation/views/widgets/Custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: CustomBookImage(
                imageUrl:
                    'https://media.istockphoto.com/id/2065674519/photo/rolling-says-macro.jpg?s=1024x1024&w=is&k=20&c=ZRzdKZTGsNQqzQ4HpvVsrWT1BL9NjKmB76pIteut-xs=',
              ),
            );
          },
        ),
      ),
    );
    ;
  }
}
