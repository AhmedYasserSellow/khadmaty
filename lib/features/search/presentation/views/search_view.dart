import 'package:flutter/material.dart';
import 'package:graduation_project/core/models/service_model.dart';
import 'package:graduation_project/core/utils/constants/firebase_constants.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/features/search/presentation/views/widgets/search_bar.dart';
import 'package:graduation_project/features/search/presentation/views/widgets/search_result_view.dart';
import 'package:graduation_project/generated/l10n.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static String id = 'SearchView';
  @override
  Widget build(BuildContext context) {
    ServiceModel serviceModel =
        ModalRoute.of(context)!.settings.arguments as ServiceModel;
    return StreamBuilder(
        stream: GetInstance.store
            .collection(FirebaseConstants.kCollectionName)
            .where(
              FirebaseConstants.kRole,
              isEqualTo: serviceModel.imageName,
            )
            .snapshots(),
        builder: (context, snapshot) {
          return Scaffold(
            appBar: CustomAppBar(
              title: S.of(context).search,
              trailing: const [],
            ),
            body: Stack(
              children: [
                SearchResultView(
                  serviceModel: serviceModel,
                ),
                const CustomSearchBar(),
              ],
            ),
          );
        });
  }
}
