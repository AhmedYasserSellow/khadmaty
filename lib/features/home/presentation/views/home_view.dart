import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';
import 'package:graduation_project/core/utils/constants/firebase_constants.dart';
import 'package:graduation_project/core/utils/constants/pages_list.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/core/widgets/loading_indicator.dart';
import 'package:graduation_project/core/widgets/logo.dart';
import 'package:graduation_project/core/widgets/page_builders.dart';
import 'package:graduation_project/features/home/data/models/profile_model.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/bottom_nav_bar.dart';
import 'package:graduation_project/generated/l10n.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: GetInstance.store
            .collection(FirebaseConstants.kCollectionName)
            .doc(HomeCubit.get(context).uID)
            .snapshots(),
        builder: (context, snapshot) {
          return BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return NestedScrollViewPageBuilder(
                controller: HomeCubit.get(context).homeController,
                extendBody: true,
                appBar: CustomAppBar(
                  leading: const Logo(),
                  title: S.of(context).title,
                  trailing: const [],
                ),
                body: snapshot.hasData
                    ? applicationPages(
                        profileModel: ProfileModel(
                          name: snapshot.data![FirebaseConstants.kName],
                          email: snapshot.data![FirebaseConstants.kEmail],
                          image:
                              '${Assets.kAssetsPath}/${snapshot.data![FirebaseConstants.kRole]}.png',
                          birthday: snapshot.data![FirebaseConstants.kBirthday],
                          location: snapshot.data![FirebaseConstants.kLocation],
                          phoneNumber: snapshot.data![FirebaseConstants.kPhone],
                        ),
                      )[HomeCubit.get(context).currentIndex]
                    : const CustomLoadingIndicator(),
                bottomNavigationBar: const CustomBottomNavBar(),
              );
            },
          );
        });
  }
}
