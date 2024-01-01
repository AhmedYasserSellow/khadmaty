import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/features/auth/presentation/view_models/auth_cubit/auth_cubit.dart';
import 'package:graduation_project/features/auth/presentation/views/sign_up_view.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/main_auth_button.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/remember_me.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/secondary_auth_button.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/text_fields.dart';
import 'package:graduation_project/core/utils/theme/text_styles.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static String id = 'Sign In';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return Scaffold(
            appBar: const CustomAppBar(title: 'Sign In', trailing: []),
            body: Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    Text('Welcome Back!', style: AuthAndRoleTextStyles.header),
                    const SizedBox(
                      height: 4,
                    ),
                    Text('Sign in your account to continue',
                        style: AuthAndRoleTextStyles.subHeader),
                    const SizedBox(
                      height: 32,
                    ),
                    CustomTextField(
                      controller: AuthCubit.get(context).signInEmailController,
                      title: 'Email',
                      icon: FontAwesomeIcons.envelope,
                    ),
                    CustomTextField(
                      controller:
                          AuthCubit.get(context).signInPasswordController,
                      title: 'Password',
                      icon: FontAwesomeIcons.lock,
                    ),
                    const RememberMe(),
                    MainAuthButton(
                      text: 'Sign In',
                      onTap: () {
                        AuthCubit.get(context).signIn(context);
                      },
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const Center(
                      child: Text(
                        "Don't have an account ?",
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
                      text: 'Sign Up',
                      onTap: () {
                        Navigator.pushReplacementNamed(context, SignUpView.id);
                      },
                    ),
                    const SizedBox(
                      height: 24,
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
