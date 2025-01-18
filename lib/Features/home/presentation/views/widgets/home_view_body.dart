import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featuted_List_view.dart';
import 'package:bookly/constans.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FeaturedBooksListView(),
            const SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30.0,
                bottom: 4.0,
              ),
              child: Text(
                'Best Seller',
                style: Styles.textStyle18.copyWith(
                  fontFamily: kGtSectraFine,
                ),
              ),
            ),
            const BestSellerListView(),
          ],
        ),
      ),
    );
  }
}
