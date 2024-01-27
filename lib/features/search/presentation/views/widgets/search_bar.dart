import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/features/search/presentation/view_models/search_cubit/search_cubit.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: SearchBar(
          onChanged: (value) {
            SearchCubit.get(context).importSearch(value);
          },
          hintText: hintText,
          leading: const Padding(
            padding: EdgeInsets.all(8),
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 16,
            ),
          )),
    );
  }
}
