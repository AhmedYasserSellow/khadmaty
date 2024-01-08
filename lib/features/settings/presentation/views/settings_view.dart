import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/theme/text_styles.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/core/widgets/sheet.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/features/my_account/presentation/views/account_view.dart';
import 'package:graduation_project/features/settings/presentation/views/widgets/custom_list_tile.dart';
import 'package:graduation_project/generated/l10n.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 38,
                ),
                child: Sheet(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 52,
                      ),
                      Text(
                        HomeCubit.get(context).name,
                        style: TextStyles.header,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        HomeCubit.get(context).email,
                        style: TextStyles.subHeader,
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Row(
                        children: [
                          Text(
                            S.of(context).general,
                            style: const TextStyle(
                              color: PrimaryColors.main,
                            ),
                          ),
                        ],
                      ),
                      // My Account
                      CustomListTile(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            MyAccountView.id,
                          );
                        },
                        icon: FontAwesomeIcons.user,
                        title: S.of(context).my_account,
                      ),
                      // Payment
                      CustomListTile(
                        icon: FontAwesomeIcons.creditCard,
                        title: S.of(context).payment,
                      ),
                      Row(
                        children: [
                          Text(
                            S.of(context).more,
                            style: const TextStyle(
                              color: PrimaryColors.main,
                            ),
                          ),
                        ],
                      ),
                      // Languages
                      CustomListTile(
                        onTap: () {},
                        icon: FontAwesomeIcons.language,
                        title: S.of(context).languages,
                      ),
                      // Privacy & Policy
                      CustomListTile(
                        icon: FontAwesomeIcons.lock,
                        title: S.of(context).privacy_policy,
                      ),
                      // Help
                      CustomListTile(
                        icon: FontAwesomeIcons.circleQuestion,
                        title: S.of(context).help,
                      ),
                      // Sign Out
                      CustomListTile(
                        icon: FontAwesomeIcons.arrowRightFromBracket,
                        title: S.of(context).sign_out,
                      ),
                    ],
                  ),
                ),
              ),
              const CircleAvatar(
                radius: 38,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
