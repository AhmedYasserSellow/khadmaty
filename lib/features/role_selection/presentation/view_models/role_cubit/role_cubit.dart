import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/utils/constants/firebase_constants.dart';
import 'package:graduation_project/core/utils/constants/prefs_keys.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/features/home/presentation/views/home_view.dart';

part 'role_state.dart';

class RoleCubit extends Cubit<RoleState> {
  RoleCubit() : super(RoleInitial());

  static RoleCubit get(context) => BlocProvider.of(context);

  double providerElevation = 5;
  double userElevation = 5;
  bool isProviderSelected = false;
  bool isUserSelected = false;
  BoxBorder? providerBorder;
  BoxBorder? userBorder;
  bool isProviderSubmitted = false;

  selectRole(bool isProvider) {
    if (isProvider) {
      isUserSelected = false;
      isProviderSelected = true;
      userElevation = 5;
      providerElevation = 20;
      providerBorder = Border.all(
        color: SecondaryColors.main,
        width: 2,
      );
      userBorder = null;
    } else {
      isUserSelected = true;
      isProviderSelected = false;
      userElevation = 20;
      providerElevation = 5;
      providerBorder = null;
      userBorder = Border.all(
        color: SecondaryColors.main,
        width: 2,
      );
    }
    emit(RoleChanged());
  }

  submitRole(BuildContext context) async {
    String email = HomeCubit.get(context).email;
    if (isProviderSelected) {
      isProviderSubmitted = true;
      emit(RoleProviderSubmitted());
      // await GetInstance.store
      //     .collection(FirebaseConstants.kCollectionName)
      //     .doc(email)
      //     .set(
      //         {FirebaseConstants.kRole: 'Provider'},
      //         SetOptions(
      //           merge: true,
      //         ));
      // if (context.mounted) {
      //   Navigator.pushReplacementNamed(
      //     context,
      //     HomeView.id,
      //   );
      // }
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

  unSubmitRole() {
    isProviderSubmitted = false;
    emit(RoleProviderUnSubmitted());
  }
}
