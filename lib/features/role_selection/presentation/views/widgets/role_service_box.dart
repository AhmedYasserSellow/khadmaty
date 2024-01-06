import 'package:flutter/material.dart';
import 'package:graduation_project/core/models/service_model.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';

class RoleServiceBox extends StatelessWidget {
  const RoleServiceBox({
    super.key,
    required this.serviceModel,
    this.onTap,
    required this.isSelected,
  });

  final ServiceModel serviceModel;
  final void Function()? onTap;

  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GestureDetector(
        onTap: onTap,
        child: Material(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: isSelected
                ? const BorderSide(
                    color: SecondaryColors.main,
                    width: 2,
                  )
                : BorderSide.none,
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
          elevation: isSelected ? 20 : 5,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  serviceModel.logoAsset,
                  width: 60,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  serviceModel.jobName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
