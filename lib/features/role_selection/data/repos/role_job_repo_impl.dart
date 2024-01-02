import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/constants/firebase_constants.dart';
import 'package:graduation_project/core/utils/constants/prefs_keys.dart';
import 'package:graduation_project/core/utils/constants/services_list.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';
import 'package:graduation_project/features/home/presentation/views/home_view.dart';
import 'package:graduation_project/features/role_selection/data/repos/role_job_repo.dart';
import 'package:graduation_project/features/role_selection/presentation/views/job_view.dart';

class RoleAndJobRepoImpl extends RoleAndJobRepo {
  @override
  submitRole(BuildContext context, bool isProviderSelected,
      bool isUserSelected) async {
    if (isProviderSelected) {
      Navigator.pushReplacementNamed(context, JobView.id);
    }
    if (isUserSelected) {
      final prefs = await GetInstance.prefs;
      await GetInstance.store
          .collection(FirebaseConstants.kCollectionName)
          .doc(prefs.getString(PrefsKeys.kUID))
          .set(
              {FirebaseConstants.kRole: 'User'},
              SetOptions(
                merge: true,
              ));

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
    final prefs = await GetInstance.prefs;
    if (context.mounted) {
      await GetInstance.store
          .collection(FirebaseConstants.kCollectionName)
          .doc(prefs.getString(PrefsKeys.kUID))
          .set(
              {FirebaseConstants.kRole: servicesList(context)[index].imageName},
              SetOptions(
                merge: true,
              ));
    }

    prefs.setBool(PrefsKeys.kIsRoleChoosed, true);
    if (context.mounted) {
      Navigator.pushReplacementNamed(
        context,
        HomeView.id,
      );
    }
  }
}
