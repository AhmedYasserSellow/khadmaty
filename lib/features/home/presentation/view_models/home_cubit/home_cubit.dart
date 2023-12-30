import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/utils/constants/prefs_keys.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  bool loggedIn = false;
  String email = '';
  Future loadState() async {
    final prefs = await GetInstance.prefs;
    loggedIn = prefs.getBool(PrefsKeys.kIsLoggedIn) ?? false;
    email = prefs.getString(PrefsKeys.kEmail) ?? '';
  }
}
