import 'package:flutter/material.dart';
import 'package:graduation_project/features/search/presentation/views/widgets/search_bar.dart';
import 'package:graduation_project/features/search/presentation/views/widgets/search_result_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        SearchResultView(),
        CustomSearchBar(),
      ],
    );
  }
}
