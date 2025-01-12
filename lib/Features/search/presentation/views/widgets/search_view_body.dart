import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/Best_Seller_List_View_Item.dart';
import 'package:bookly/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly/constans.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: CustomSearchTextField(),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30.0,
              bottom: 4.0,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Search result',
                style: Styles.textStyle18.copyWith(
                  fontFamily: kGtSectraFine,
                ),
              ),
            ),
          ),
          const SearchResultListView(),
        ],
      ),
    );
  }
}
