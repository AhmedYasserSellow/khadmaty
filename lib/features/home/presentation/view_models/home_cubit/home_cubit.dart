import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/utils/constants/prefs_keys.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);
  bool isHome = true;
  bool loggedIn = false;
  bool isRoleChossed = false;
  String email = '';
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  Future loadState() async {
    final prefs = await GetInstance.prefs;
    loggedIn = prefs.getBool(PrefsKeys.kIsLoggedIn) ?? false;
    isRoleChossed = prefs.getBool(PrefsKeys.kIsRoleChoosed) ?? false;
    email = prefs.getString(PrefsKeys.kEmail) ?? '';
  }

  Future logOut(BuildContext context) async {
    GetInstance.homeRepoImpl.logOut(context);
  }

  void changePage(bool isHomePage) {
    isHome = isHomePage;
    scaffoldKey.currentState!.closeEndDrawer();
    emit(ChangePageSuccess());
  }
}
