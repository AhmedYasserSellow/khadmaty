import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/search/presentation/view_models/search_cubit/search_cubit.dart';
import 'package:graduation_project/features/search/presentation/views/widgets/no_result.dart';
import 'package:graduation_project/features/search/presentation/views/widgets/search_bar.dart';
import 'package:graduation_project/features/search/presentation/views/widgets/search_result_view.dart';
import 'package:graduation_project/generated/l10n.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          return Stack(
            children: [
              SearchCubit.get(context).searchValue == null ||
                      SearchCubit.get(context).searchValue == ''
                  ? const NoResultView()
                  : const SearchResultView(),
              CustomSearchBar(
                hintText: S.of(context).search,
              ),
            ],
          );
        },
      ),
    );
  }
}
