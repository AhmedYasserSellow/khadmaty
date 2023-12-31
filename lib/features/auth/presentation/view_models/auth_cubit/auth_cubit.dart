import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static AuthCubit get(BuildContext context) => BlocProvider.of(context);
  final TextEditingController signInEmailController = TextEditingController();
  final TextEditingController signUpEmailController = TextEditingController();
  final TextEditingController signInPasswordController =
      TextEditingController();
  final TextEditingController signUpPasswordController =
      TextEditingController();
  final TextEditingController signUpNameController = TextEditingController();
  Future signUp(BuildContext context) async {
    GetInstance.authRepoImpl.signUp(context, signUpEmailController,
        signUpPasswordController, signUpNameController);
  }

  Future signIn(BuildContext context) async {
    GetInstance.authRepoImpl
        .signIn(context, signInEmailController, signInPasswordController);
  }
}
