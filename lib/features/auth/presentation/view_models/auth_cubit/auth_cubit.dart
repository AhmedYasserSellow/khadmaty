import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:intl/intl.dart';

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
  final TextEditingController signUpFirstNameController =
      TextEditingController();
  final TextEditingController signUpLastNameController =
      TextEditingController();
  final TextEditingController signUpPhoneController = TextEditingController();
  final TextEditingController signUpBirthDayController =
      TextEditingController();
  final TextEditingController signUpLocationController =
      TextEditingController();
  Future signUp(BuildContext context) async {
    GetInstance.authRepoImpl.signUp(
      context,
      signUpEmailController,
      signUpPasswordController,
      signUpFirstNameController,
      signUpLastNameController,
      signUpPhoneController,
      signUpBirthDayController,
      signUpLocationController,
    );
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

  void selectDate(BuildContext context) {
    showDatePicker(
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(
                primary: PrimaryColors.main,
              ),
            ),
            child: child!);
      },
      initialDatePickerMode: DatePickerMode.year,
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.utc(DateTime.now().year - 100, 1, 1),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value == null) {
        AuthCubit.get(context).signUpBirthDayController.clear();
      } else {
        AuthCubit.get(context).signUpBirthDayController.text =
            DateFormat('d/M/y').format(value);
      }
    });
  }
}
