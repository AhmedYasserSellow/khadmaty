import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';
import 'package:graduation_project/core/utils/constants/firebase_constants.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/features/home/data/models/profile_model.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/user_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: GetInstance.store
            .collection(FirebaseConstants.kCollectionName)
            .doc(HomeCubit.get(context).email)
            .get(),
        builder: (context, snapshot) {
          return Scaffold(
            appBar: const CustomAppBar(
                leading: SizedBox(), title: 'Khadmaty', trailing: []),
            body: snapshot.hasData
                ? UserView(
                    profileModel: ProfileModel(
                      name: snapshot.data![FirebaseConstants.kName],
                      email: HomeCubit.get(context).email,
                      image: Assets.kUser,
                    ),
                  )
                : const Center(
                    child: CircularProgressIndicator(
                    color: SecondaryColors.main,
                  )),
          );
        });
  }
}
