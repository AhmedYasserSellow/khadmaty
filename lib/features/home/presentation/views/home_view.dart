import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';
import 'package:graduation_project/core/utils/constants/firebase_constants.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/core/widgets/logo.dart';
import 'package:graduation_project/features/home/data/models/profile_model.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/end_drawer.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:graduation_project/generated/l10n.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: GetInstance.store
            .collection(FirebaseConstants.kCollectionName)
            .doc(HomeCubit.get(context).email)
            .snapshots(),
        builder: (context, snapshot) {
          return BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return Scaffold(
                key: HomeCubit.get(context).scaffoldKey,
                endDrawer: EndDrawer(
                  profileModel: ProfileModel(
                    name: snapshot.data![FirebaseConstants.kName],
                    email: HomeCubit.get(context).email,
                    image:
                        '${Assets.kAssetsPath}/${snapshot.data![FirebaseConstants.kRole]}.png'
                            .toLowerCase(),
                  ),
                ),
                appBar: CustomAppBar(
                  leading: const Logo(),
                  title: S.of(context).title,
                  trailing: [
                    IconButton(
                      color: Colors.white,
                      onPressed: () {
                        HomeCubit.get(context)
                            .scaffoldKey
                            .currentState!
                            .openEndDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                      ),
                    ),
                  ],
                ),
                body: snapshot.hasData
                    ? HomeCubit.get(context).isHome
                        ? HomeViewBody(
                            name: snapshot.data![FirebaseConstants.kName],
                          )
                        : const SizedBox()
                    : const Center(
                        child: CircularProgressIndicator(
                        color: SecondaryColors.main,
                      )),
              );
            },
          );
        });
  }
}
