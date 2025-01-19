import 'package:bookly/Core/widget/custom_error_widget.dart';
import 'package:bookly/Core/widget/custom_loading_indicator.dart';
import 'package:bookly/Features/home/presentation/manager/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/Custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
      builder: (context, state) {
        if (state is SimilerBooksSuccess) {
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
        } else if (state is SimilerBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
    ;
  }
}
