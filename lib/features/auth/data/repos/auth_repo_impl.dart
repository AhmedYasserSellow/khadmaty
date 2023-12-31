import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/constants/firebase_constants.dart';
import 'package:graduation_project/core/utils/constants/prefs_keys.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';
import 'package:graduation_project/core/widgets/snack_bar.dart';
import 'package:graduation_project/features/auth/data/repos/auth_repo.dart';
import 'package:graduation_project/features/role_selection/presentation/views/role_view.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/features/home/presentation/views/home_view.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future signIn(BuildContext context, TextEditingController emailController,
      TextEditingController passwordController) async {
    try {
      await GetInstance.auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      final snapshot = await GetInstance.store
          .collection(FirebaseConstants.kCollectionName)
          .doc(emailController.text)
          .get();
      final prefs = await GetInstance.prefs;
      prefs.setString(PrefsKeys.kEmail, emailController.text);
      final role = snapshot.data()!['Role'] ?? '';
      if (context.mounted) {
        HomeCubit.get(context).loadState();
        if (role != '') {
          Navigator.pushReplacementNamed(
            context,
            HomeView.id,
          );
        } else {
          Navigator.pushReplacementNamed(
            context,
            RoleSelectorView.id,
          );
        }
      }
    } on FirebaseAuthException catch (e) {
      if (context.mounted) {
        if (e.code == 'user-not-found') {
          ScaffoldMessenger.of(context).showSnackBar(
            customSnackBar('e-mail is not correct'),
          );
        } else if (e.code == 'wrong-password') {
          ScaffoldMessenger.of(context).showSnackBar(
            customSnackBar('password is not correct'),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            customSnackBar('try again later'),
          );
        }
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          customSnackBar('try again later'),
        );
      }
    }
  }

  @override
  Future signUp(
    BuildContext context,
    TextEditingController emailController,
    TextEditingController passwordController,
    TextEditingController nameController,
  ) async {
    try {
      final UserCredential user =
          await GetInstance.auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      user;
      user.user!.updateDisplayName(nameController.text);
      await GetInstance.store
          .collection(FirebaseConstants.kCollectionName)
          .doc(emailController.text)
          .set(
        {
          FirebaseConstants.kName: nameController.text,
          FirebaseConstants.kEmail: emailController.text,
        },
      );
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          customSnackBar(
            'account created successfully,',
            color: Colors.black,
          ),
        );
      }
    } on FirebaseAuthException catch (e) {
      if (context.mounted) {
        if (e.code == 'weak-password') {
          ScaffoldMessenger.of(context).showSnackBar(
            customSnackBar('weak password'),
          );
        } else if (e.code == 'email-already-in-use') {
          ScaffoldMessenger.of(context).showSnackBar(
            customSnackBar('e-mail is already used'),
          );
        }
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          customSnackBar('try again later'),
        );
      }
    }
  }
}
