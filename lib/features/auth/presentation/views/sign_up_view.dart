import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/features/auth/presentation/view_models/cubit/auth_cubit.dart';
import 'package:graduation_project/features/auth/presentation/views/sign_in_view.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/main_auth_button.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/secondary_auth_button.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/text_fields.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/text_styles.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static String id = 'Sign Up';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return Scaffold(
            appBar: const CustomAppBar(title: 'Sign Up', trailing: []),
            body: Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 32,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Create an Account', style: AuthTextStyles.header),
                    const SizedBox(
                      height: 4,
                    ),
                    Text('Sign up your account to continue',
                        style: AuthTextStyles.subHeader),
                    const SizedBox(
                      height: 32,
                    ),
                    CustomTextField(
                      controller: AuthCubit.get(context).signUpNameController,
                      title: 'Your Name',
                      icon: FontAwesomeIcons.user,
                    ),
                    CustomTextField(
                      controller: AuthCubit.get(context).signUpEmailController,
                      title: 'Email',
                      icon: FontAwesomeIcons.envelope,
                    ),
                    CustomTextField(
                      controller:
                          AuthCubit.get(context).signUpPasswordController,
                      title: 'Password',
                      icon: FontAwesomeIcons.lock,
                    ),
                    MainAuthButton(
                      text: 'Sign Up',
                      onTap: () {
                        AuthCubit.get(context).signUp(context);
                      },
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const Center(
                      child: Text(
                        "Already have an account ?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    SecondaryAuthButton(
                      text: 'Sign In',
                      onTap: () {
                        Navigator.pushReplacementNamed(context, SignInView.id);
                      },
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
