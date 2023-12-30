import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/main_auth_button.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/role.dart';

class SelectRoleSection extends StatefulWidget {
  const SelectRoleSection({super.key});

  @override
  State<SelectRoleSection> createState() => _SelectRoleSectionState();
}

class _SelectRoleSectionState extends State<SelectRoleSection> {
  double providerElevation = 5;
  double userElevation = 5;
  bool isProviderSelected = false;
  bool isUserSelected = false;
  BoxBorder? providerBorder;
  BoxBorder? userBorder;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 120,
        ),
        Role(
          onTap: () {
            setState(() {
              isUserSelected = false;
              isProviderSelected = true;
              userElevation = 5;
              providerElevation = 20;
              providerBorder = Border.all(
                color: SecondaryColors.main,
                width: 2,
              );
              userBorder = null;
            });
          },
          border: providerBorder,
          elevation: providerElevation,
          imageName: 'assets/images/provider.png',
          title: 'Provider',
          subtitle: '',
        ),
        const SizedBox(
          height: 40,
        ),
        Role(
          onTap: () {
            setState(() {
              isUserSelected = true;
              isProviderSelected = false;
              userElevation = 20;
              providerElevation = 5;
              providerBorder = null;
              userBorder = Border.all(
                color: SecondaryColors.main,
                width: 2,
              );
            });
          },
          border: userBorder,
          elevation: userElevation,
          imageName: 'assets/images/user.png',
          title: 'User',
          subtitle: '',
        ),
        const SizedBox(
          height: 80,
        ),
        Opacity(
          opacity: isProviderSelected || isUserSelected ? 1 : 0.5,
          child: MainAuthButton(
            text: 'Continue',
            onTap: () async {
              if (isProviderSelected) {}
              if (isUserSelected) {}
            },
          ),
        )
      ],
    );
  }
}
