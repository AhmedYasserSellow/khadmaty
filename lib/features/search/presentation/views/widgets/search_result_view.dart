import 'package:flutter/material.dart';
import 'package:graduation_project/core/models/service_model.dart';
import 'package:graduation_project/core/utils/constants/firebase_constants.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';
import 'package:graduation_project/core/widgets/loading_indicator.dart';
import 'package:graduation_project/core/widgets/sheet.dart';
import 'package:graduation_project/features/search/data/models/search_model.dart';
import 'package:graduation_project/features/search/presentation/views/widgets/no_result.dart';
import 'package:graduation_project/features/search/presentation/views/widgets/result.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({super.key, required this.serviceModel});
  final ServiceModel serviceModel;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: GetInstance.store
            .collection(FirebaseConstants.kCollectionName)
            .where(
              FirebaseConstants.kRole,
              isEqualTo: serviceModel.imageName,
            )
            .snapshots(),
        builder: (context, snapshot) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 21,
            ),
            child: Sheet(
              child: snapshot.hasData
                  ? snapshot.data!.size != 0
                      ? CustomScrollView(
                          slivers: [
                            const SliverToBoxAdapter(
                              child: SizedBox(
                                height: 52,
                              ),
                            ),
                            SliverList.separated(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index) {
                                return SearchResult(
                                  resultModel: SearchModel(
                                    serviceModel: serviceModel,
                                    name: snapshot.data!.docs[index]
                                        [FirebaseConstants.kName],
                                    email: snapshot.data!.docs[index]
                                        [FirebaseConstants.kEmail],
                                    rate: 5,
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  height: 12,
                                );
                              },
                            )
                          ],
                        )
                      : const Center(child: NoResultView())
                  : const CustomLoadingIndicator(),
            ),
          );
        });
  }
}
