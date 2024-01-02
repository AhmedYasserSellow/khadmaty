import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';
import 'package:graduation_project/core/utils/theme/text_styles.dart';
import 'package:graduation_project/core/widgets/sheet.dart';
import 'package:graduation_project/features/auth/presentation/views/sign_in_view.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/main_auth_button.dart';
import 'package:graduation_project/generated/l10n.dart';

class AccountCreatedBody extends StatelessWidget {
  const AccountCreatedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Sheet(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.kAccountCreated,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                S.of(context).account_created,
                style: AuthAndRoleTextStyles.header,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                S.of(context).sign_in_sub_header,
                style: AuthAndRoleTextStyles.subHeader,
              ),
              const SizedBox(
                height: 16,
              ),
              MainAuthButton(
                text: S.of(context).sign_in,
                onTap: () {
                  Navigator.pushReplacementNamed(context, SignInView.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
