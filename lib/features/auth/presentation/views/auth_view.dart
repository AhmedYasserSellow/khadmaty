import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/core/widgets/lang_button.dart';
import 'package:graduation_project/core/widgets/sheet.dart';
import 'package:graduation_project/features/auth/presentation/views/sign_in_view.dart';
import 'package:graduation_project/features/auth/presentation/views/sign_up_view.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/auth_button.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/secondary_auth_button.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/terms_text.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/generated/l10n.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});
  static String id = 'AuthView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  const Row(
                    children: [
                      Spacer(),
                      LanguageButton(),
                      SizedBox(
                        width: 24,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.asset(Assets.kLogoName),
                  const Spacer(),
                  Sheet(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 24,
                        right: 24,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 52,
                          ),
                          AuthButton(
                            color: PrimaryColors.main,
                            text: S.of(context).auth_email,
                            icon: FontAwesomeIcons.solidEnvelope,
                            onTap: () {
                              Navigator.pushNamed(context, SignInView.id);
                            },
                          ),
                          AuthButton(
                            color: Colors.black,
                            text: S.of(context).auth_apple,
                            icon: FontAwesomeIcons.apple,
                          ),
                          AuthButton(
                            color: const Color(0xff5483EC),
                            text: S.of(context).auth_google,
                            icon: FontAwesomeIcons.google,
                          ),
                          AuthButton(
                            color: const Color(0xff425692),
                            text: S.of(context).auth_facebook,
                            icon: FontAwesomeIcons.facebook,
                          ),
                          Text(
                            S.of(context).no_account,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          SecondaryAuthButton(
                            text: S.of(context).sign_up,
                            onTap: () {
                              Navigator.pushNamed(context, SignUpView.id);
                            },
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          HomeCubit.get(context).en
                              ? const TermsTextEN()
                              : const TermsTextAR(),
                          const SizedBox(
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
