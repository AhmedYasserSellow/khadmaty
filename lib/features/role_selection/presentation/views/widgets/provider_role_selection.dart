import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/utils/constants/services_list.dart';
import 'package:graduation_project/features/role_selection/presentation/view_models/role_cubit/role_cubit.dart';
import 'package:graduation_project/features/role_selection/presentation/views/widgets/role_service_box.dart';

class ProviderRoleSelectionSection extends StatelessWidget {
  const ProviderRoleSelectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoleCubit, RoleState>(
      builder: (context, state) {
        return SliverGrid.builder(
          itemCount: servicesList(context).length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return RoleServiceBox(
              isSelected: RoleCubit.get(context).currentIndex == index,
              serviceModel: servicesList(context)[index],
              onTap: () {
                RoleCubit.get(context).selectJob(index);
              },
            );
          },
        );
      },
    );
  }
}
