import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/Best_Seller_List_View_Item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featuted_List_view.dart';
import 'package:bookly/constans.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const FeaturedBooksListView(),
        const SizedBox(
          height: 50.0,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 30.0,
          ),
          child: Text(
            'Best Seller',
            style: Styles.textStyle18.copyWith(
              fontFamily: kGtSectraFine,
            ),
          ),
        ),
        const BestSellerListViewItem(),
      ],
    );
  }
}
