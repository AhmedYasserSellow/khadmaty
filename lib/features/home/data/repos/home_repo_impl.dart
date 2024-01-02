import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/constants/prefs_keys.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';
import 'package:graduation_project/features/auth/presentation/views/auth_view.dart';
import 'package:graduation_project/features/home/data/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  @override
  Future signOut(BuildContext context) async {
    final prefs = await GetInstance.prefs;
    prefs.setBool(PrefsKeys.kIsLoggedIn, false);
    prefs.setBool(PrefsKeys.kIsRoleChoosed, false);
    GetInstance.auth.signOut();

    if (context.mounted) {
      Navigator.pushReplacementNamed(
        context,
        AuthView.id,
      );
    }
  }
}
