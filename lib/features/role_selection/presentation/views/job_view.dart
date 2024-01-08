import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/core/widgets/sheet.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/main_auth_button.dart';
import 'package:graduation_project/features/role_selection/presentation/view_models/role_cubit/role_cubit.dart';
import 'package:graduation_project/features/role_selection/presentation/views/widgets/back_to_role_selection.dart';
import 'package:graduation_project/features/role_selection/presentation/views/widgets/provider_role_selection.dart';
import 'package:graduation_project/generated/l10n.dart';

import '../../../../core/utils/theme/text_styles.dart';

class JobView extends StatelessWidget {
  const JobView({super.key});
  static String id = 'JobView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RoleCubit(),
      child: BlocBuilder<RoleCubit, RoleState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(
              leading: const BackToRoleSelectionView(),
              title: S.of(context).job_selector,
              trailing: const [],
            ),
            body: Sheet(
              child: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 32,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Text(
                      S.of(context).job_selector_header,
                      style: TextStyles.header,
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 4,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Text(
                      S.of(context).job_selector_sub_header,
                      style: TextStyles.subHeader,
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 40,
                    ),
                  ),
                  const ProviderRoleSelectionSection(),
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: SizedBox(
                      height: 40,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Opacity(
                      opacity:
                          RoleCubit.get(context).currentIndex != -1 ? 1 : 0.5,
                      child: MainAuthButton(
                        text: S.of(context).continue_,
                        onTap: () {
                          RoleCubit.get(context).submitJob(context);
                        },
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 80,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
