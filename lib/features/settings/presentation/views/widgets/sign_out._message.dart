import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';
import 'package:graduation_project/core/utils/theme/text_styles.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/main_auth_button.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/generated/l10n.dart';

class SignOutMessage extends StatelessWidget {
  const SignOutMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              Assets.kSignOut,
              width: MediaQuery.of(context).size.width / 2,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              S.of(context).sign_out_header,
              style: TextStyles.header,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).sign_out_sub_header,
              style: TextStyles.subHeader,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: MainAuthButton(
                    textColor: PrimaryColors.main,
                    buttonColor: PrimaryColors.focus,
                    text: S.of(context).cancel,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: MainAuthButton(
                    text: S.of(context).sign_out,
                    onTap: () {
                      HomeCubit.get(context).signOut(context);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 36,
            ),
          ],
        ),
      ),
    );
  }
}
