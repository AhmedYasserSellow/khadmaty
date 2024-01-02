import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static AuthCubit get(BuildContext context) => BlocProvider.of(context);

  bool isObscured = true;
  IconData eyeIcon = FontAwesomeIcons.eyeSlash;

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

  changeObscure() {
    if (isObscured) {
      eyeIcon = FontAwesomeIcons.eye;
      isObscured = !isObscured;
    } else {
      eyeIcon = FontAwesomeIcons.eyeSlash;
      isObscured = !isObscured;
    }
    emit(ChangePasswordVisibilty());
  }
}
