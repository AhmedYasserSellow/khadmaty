import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/constants/firebase_constants.dart';
import 'package:graduation_project/core/utils/constants/prefs_keys.dart';
import 'package:graduation_project/core/utils/constants/services_list.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/features/home/presentation/views/home_view.dart';
import 'package:graduation_project/features/role_selection/data/repos/role_job_repo.dart';
import 'package:graduation_project/features/role_selection/presentation/views/job_view.dart';

class RoleAndJobRepoImpl extends RoleAndJobRepo {
  @override
  submitRole(BuildContext context, bool isProviderSelected,
      bool isUserSelected) async {
    String email = HomeCubit.get(context).email;
    if (isProviderSelected) {
      Navigator.pushReplacementNamed(context, JobView.id);
    }
    if (isUserSelected) {
      await GetInstance.store
          .collection(FirebaseConstants.kCollectionName)
          .doc(email)
          .set(
              {FirebaseConstants.kRole: 'User'},
              SetOptions(
                merge: true,
              ));
      final prefs = await GetInstance.prefs;
      prefs.setBool(PrefsKeys.kIsRoleChoosed, true);
      if (context.mounted) {
        Navigator.pushReplacementNamed(
          context,
          HomeView.id,
        );
      }
    }
  }

  @override
  Future submitJob(BuildContext context, int index) async {
    String email = HomeCubit.get(context).email;
    await GetInstance.store
        .collection(FirebaseConstants.kCollectionName)
        .doc(email)
        .set(
            {
          FirebaseConstants.kRole: servicesList(context)[index]
              .enName
              .replaceAll(' ', '_')
              .toLowerCase(),
        },
            SetOptions(
              merge: true,
            ));
    final prefs = await GetInstance.prefs;
    prefs.setBool(PrefsKeys.kIsRoleChoosed, true);
    if (context.mounted) {
      Navigator.pushReplacementNamed(
        context,
        HomeView.id,
      );
    }
  }
}
