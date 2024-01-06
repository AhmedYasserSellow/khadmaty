import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/search/data/models/search_model.dart';
import 'package:graduation_project/generated/l10n.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key, required this.resultModel});
  final SearchModel resultModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: SecondaryColors.surface,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                '${Assets.kAssetsPath}/${resultModel.serviceModel.imageName}.png',
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${S.of(context).name}: '
                  '${resultModel.name}',
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  resultModel.rate.toString(),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.message,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
          ],
        ),
      ),
    );
  }
}
