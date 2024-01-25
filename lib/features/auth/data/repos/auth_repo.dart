import 'package:flutter/widgets.dart';

abstract class AuthRepo {
  Future signIn(
    BuildContext context,
    TextEditingController emailController,
    TextEditingController passwordController,
  );
  Future signUp(
    BuildContext context,
    TextEditingController emailController,
    TextEditingController passwordController,
    TextEditingController firstNameController,
    TextEditingController lastNameController,
    TextEditingController phoneController,
    TextEditingController birthDayController,
    TextEditingController locationController,
  );
}
