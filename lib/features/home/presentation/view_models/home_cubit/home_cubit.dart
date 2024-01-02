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
  String name = '';
  String uID = '';
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool en = true;
  String locale = 'en';

  changeLocale() async {
    final prefs = await GetInstance.prefs;
    if (en) {
      en = !en;
      prefs.setString(PrefsKeys.kLocale, 'ar');
      locale = 'ar';
    } else {
      en = !en;
      prefs.setString(PrefsKeys.kLocale, 'en');
      locale = 'en';
    }
    emit(ChangeLocaleSuccess());
  }

  changeLocaleFromHomePage(String value) async {
    locale = value;
    if (locale == 'en') {
      en = false;
      changeLocale();
    } else if (locale == 'ar') {
      en = true;
      changeLocale();
    }
  }

  Future loadState() async {
    final prefs = await GetInstance.prefs;
    loggedIn = prefs.getBool(PrefsKeys.kIsLoggedIn) ?? false;
    isRoleChossed = prefs.getBool(PrefsKeys.kIsRoleChoosed) ?? false;
    email = prefs.getString(PrefsKeys.kEmail) ?? '';
    name = prefs.getString(PrefsKeys.kName) ?? '';
    locale = prefs.getString(PrefsKeys.kLocale) ?? 'en';
    uID = prefs.getString(PrefsKeys.kUID) ?? '';
    if (locale == 'en') {
      en = true;
    } else if (locale == 'ar') {
      en = false;
    }
    emit(LoadStateSuccess());
  }

  Future signOut(BuildContext context) async {
    GetInstance.homeRepoImpl.signOut(context);
  }

  void changePage(bool isHomePage) {
    isHome = isHomePage;
    scaffoldKey.currentState!.closeEndDrawer();
    emit(ChangePageSuccess());
  }
}
