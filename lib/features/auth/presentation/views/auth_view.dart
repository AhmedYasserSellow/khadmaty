import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/auth/presentation/views/sign_in_view.dart';
import 'package:graduation_project/features/auth/presentation/views/sign_up_view.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/auth_button.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/secondary_auth_button.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});
  static String id = 'AuthView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 52,
          bottom: 24,
        ),
        child: Column(
          children: [
            const Spacer(),
            Column(
              children: [
                AuthButton(
                  color: PrimaryColors.main,
                  text: 'Continue with Email',
                  icon: FontAwesomeIcons.solidEnvelope,
                  onTap: () {
                    Navigator.pushNamed(context, SignInView.id);
                  },
                ),
                const AuthButton(
                  color: Colors.black,
                  text: 'Continue with Apple',
                  icon: FontAwesomeIcons.apple,
                ),
                const AuthButton(
                  color: Color(0xff5483EC),
                  text: 'Continue with Google',
                  icon: FontAwesomeIcons.google,
                ),
                const AuthButton(
                  color: Color(0xff425692),
                  text: 'Continue with Facebook',
                  icon: FontAwesomeIcons.facebook,
                ),
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SecondaryAuthButton(
                  text: 'Sign Up',
                  onTap: () {
                    Navigator.pushNamed(context, SignUpView.id);
                  },
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'By clicking “Continue with Email/Apple/Google/Facebook” above, you agree to Lance hub ',
                        style: TextStyle(
                          color: NeutralColors.k300,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms & Conditional',
                        style: TextStyle(
                          color: PrimaryColors.main,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          color: NeutralColors.k300,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy.',
                        style: TextStyle(
                          color: PrimaryColors.main,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
