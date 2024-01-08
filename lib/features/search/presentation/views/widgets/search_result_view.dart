import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/sheet.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 21,
      ),
      child: Sheet(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 52,
              ),
            ),
            // SliverList.separated(
            //   itemCount: snapshot.data!.docs.length,
            //   itemBuilder: (context, index) {
            //     return SearchResult(
            //       resultModel: SearchModel(
            //         serviceModel: serviceModel,
            //         name: snapshot.data!.docs[index][FirebaseConstants.kName],
            //         email: snapshot.data!.docs[index][FirebaseConstants.kEmail],
            //         rate: 5,
            //       ),
            //     );
            //   },
            //   separatorBuilder: (context, index) {
            //     return const SizedBox(
            //       height: 12,
            //     );
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
