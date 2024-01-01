import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';

part 'role_state.dart';

class RoleCubit extends Cubit<RoleState> {
  RoleCubit() : super(RoleInitial());

  static RoleCubit get(context) => BlocProvider.of(context);

  bool isProviderSelected = false;
  bool isUserSelected = false;
  int currentIndex = -1;

  selectProvider(bool isProvider) {
    if (isProvider) {
      isUserSelected = false;
      isProviderSelected = true;
    } else {
      isUserSelected = true;
      isProviderSelected = false;
    }
    emit(RoleChanged());
  }

  submitRole(BuildContext context) {
    GetInstance.roleAndJobRepoImpl
        .submitRole(context, isProviderSelected, isUserSelected);
  }

  selectJob(int index) {
    currentIndex = index;
    emit(JobSelected());
  }

  submitJob(BuildContext context) async {
    GetInstance.roleAndJobRepoImpl.submitJob(context, currentIndex);
  }
}
