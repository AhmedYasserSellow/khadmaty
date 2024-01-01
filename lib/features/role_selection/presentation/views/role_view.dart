import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/core/widgets/logo.dart';
import 'package:graduation_project/features/role_selection/presentation/view_models/role_cubit/role_cubit.dart';
import 'package:graduation_project/features/role_selection/presentation/views/widgets/select_role_section.dart';
import 'package:graduation_project/generated/l10n.dart';

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
              leading: const Logo(),
              title: S.of(context).role_selector,
              trailing: const [],
            ),
            body: const Padding(
              padding: EdgeInsets.only(
                left: 24,
                right: 24,
                top: 32,
              ),
              child: SelectRoleSection(),
            ),
          );
        },
      ),
    );
  }
}
