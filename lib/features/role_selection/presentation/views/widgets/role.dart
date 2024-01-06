import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/core/utils/theme/text_styles.dart';
import 'package:graduation_project/features/role_selection/data/models/role_model.dart';

class Role extends StatelessWidget {
  const Role({
    super.key,
    required this.isSelected,
    required this.roleModel,
    this.onTap,
  });
  final RoleModel roleModel;
  final bool isSelected;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: isSelected ? 20 : 5,
        borderRadius: BorderRadius.circular(32),
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
            border: isSelected
                ? Border.all(
                    color: SecondaryColors.main,
                    width: 2,
                  )
                : null,
            borderRadius: BorderRadius.circular(32),
            color: NeutralColors.kWhite,
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                ),
                height: 80,
                width: 80,
                child: Image.asset(
                  roleModel.imageName,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    roleModel.title,
                    style: TextStyles.header,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    roleModel.subtitle,
                    style: TextStyles.subHeader,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
