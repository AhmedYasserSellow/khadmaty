import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/main_auth_button.dart';
import 'package:graduation_project/features/role_selection/presentation/view_models/role_cubit/role_cubit.dart';
import 'package:graduation_project/features/role_selection/presentation/views/widgets/role.dart';

class SelectRoleSection extends StatelessWidget {
  const SelectRoleSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoleCubit, RoleState>(
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            Role(
              onTap: () {
                RoleCubit.get(context).selectRole(true);
              },
              border: RoleCubit.get(context).providerBorder,
              elevation: RoleCubit.get(context).providerElevation,
              imageName: Assets.kProvider,
              title: 'Provider',
              subtitle: '',
            ),
            const SizedBox(
              height: 40,
            ),
            Role(
              onTap: () {
                RoleCubit.get(context).selectRole(false);
              },
              border: RoleCubit.get(context).userBorder,
              elevation: RoleCubit.get(context).userElevation,
              imageName: Assets.kUser,
              title: 'User',
              subtitle: '',
            ),
            const SizedBox(
              height: 80,
            ),
            Opacity(
              opacity: RoleCubit.get(context).isProviderSelected ||
                      RoleCubit.get(context).isUserSelected
                  ? 1
                  : 0.5,
              child: MainAuthButton(
                text: 'Continue',
                onTap: () {
                  RoleCubit.get(context).submitRole(context);
                },
              ),
            )
          ],
        );
      },
    );
  }
}
