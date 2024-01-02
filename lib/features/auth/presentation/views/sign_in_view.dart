import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/features/auth/presentation/view_models/auth_cubit/auth_cubit.dart';
import 'package:graduation_project/features/auth/presentation/views/sign_up_view.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/eye.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/main_auth_button.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/remember_me.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/secondary_auth_button.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/text_fields.dart';
import 'package:graduation_project/core/utils/theme/text_styles.dart';
import 'package:graduation_project/generated/l10n.dart';

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
            appBar:
                CustomAppBar(title: S.of(context).sign_in, trailing: const []),
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
                    Text(S.of(context).sign_in_header,
                        style: AuthAndRoleTextStyles.header),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(S.of(context).sign_in_sub_header,
                        style: AuthAndRoleTextStyles.subHeader),
                    const SizedBox(
                      height: 32,
                    ),
                    CustomTextField(
                      controller: AuthCubit.get(context).signInEmailController,
                      title: S.of(context).email,
                      icon: FontAwesomeIcons.envelope,
                    ),
                    CustomTextField(
                      isObscured: AuthCubit.get(context).isObscured,
                      controller:
                          AuthCubit.get(context).signInPasswordController,
                      title: S.of(context).password,
                      icon: FontAwesomeIcons.lock,
                      suffix: const Eye(),
                    ),
                    const RememberMe(),
                    MainAuthButton(
                      text: S.of(context).sign_in,
                      onTap: () {
                        AuthCubit.get(context).signIn(context);
                      },
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Center(
                      child: Text(
                        S.of(context).no_account,
                        style: const TextStyle(
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
                      text: S.of(context).sign_up,
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
