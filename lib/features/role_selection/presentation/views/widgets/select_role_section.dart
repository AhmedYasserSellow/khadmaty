import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';
import 'package:graduation_project/core/widgets/sheet.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/main_auth_button.dart';
import 'package:graduation_project/core/utils/theme/text_styles.dart';
import 'package:graduation_project/features/role_selection/data/models/role_model.dart';
import 'package:graduation_project/features/role_selection/presentation/view_models/role_cubit/role_cubit.dart';
import 'package:graduation_project/features/role_selection/presentation/views/widgets/role.dart';
import 'package:graduation_project/generated/l10n.dart';

class SelectRoleSection extends StatelessWidget {
  const SelectRoleSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoleCubit, RoleState>(
      builder: (context, state) {
        return Sheet(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 32,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Text(
                    S.of(context).role_selector_header,
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
                    S.of(context).role_selector_sub_header,
                    style: TextStyles.subHeader,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 120,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Role(
                    isSelected: RoleCubit.get(context).isProviderSelected,
                    onTap: () {
                      RoleCubit.get(context).selectProvider(true);
                    },
                    roleModel: RoleModel(
                      imageName: Assets.kProvider,
                      title: S.of(context).provider_header,
                      subtitle: S.of(context).provider_sub_header,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Role(
                    isSelected: RoleCubit.get(context).isUserSelected,
                    onTap: () {
                      RoleCubit.get(context).selectProvider(false);
                    },
                    roleModel: RoleModel(
                      imageName: Assets.kUser,
                      title: S.of(context).user_header,
                      subtitle: S.of(context).user_sub_header,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 80,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Opacity(
                    opacity: RoleCubit.get(context).isProviderSelected ||
                            RoleCubit.get(context).isUserSelected
                        ? 1
                        : 0.5,
                    child: MainAuthButton(
                      text: S.of(context).continue_,
                      onTap: () {
                        RoleCubit.get(context).submitRole(context);
                      },
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 80,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
