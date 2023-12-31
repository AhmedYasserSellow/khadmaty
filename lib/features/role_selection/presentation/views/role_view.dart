import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/text_styles.dart';
import 'package:graduation_project/features/role_selection/presentation/view_models/role_cubit/role_cubit.dart';
import 'package:graduation_project/features/role_selection/presentation/views/widgets/back_to_role_selection.dart';
import 'package:graduation_project/features/role_selection/presentation/views/widgets/provider_role_selection.dart';
import 'package:graduation_project/features/role_selection/presentation/views/widgets/select_role_section.dart';

class RoleSelectorView extends StatelessWidget {
  const RoleSelectorView({super.key});
  static String id = 'RoleSelectorView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RoleCubit(),
      child: BlocBuilder<RoleCubit, RoleState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(
              leading: RoleCubit.get(context).isProviderSubmitted
                  ? const BackToRoleSelectionView()
                  : const SizedBox(),
              title: 'Role Selector',
              trailing: const [],
            ),
            body: Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 32,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Choose your role',
                    style: AuthTextStyles.header,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Which type of user are you?',
                    style: AuthTextStyles.subHeader,
                  ),
                  RoleCubit.get(context).isProviderSubmitted
                      ? const ProviderRoleSelectionSection()
                      : const SelectRoleSection(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
