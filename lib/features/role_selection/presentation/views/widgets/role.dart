import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/text_styles.dart';

class Role extends StatelessWidget {
  const Role({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageName,
    this.elevation = 5,
    this.onTap,
    this.border,
  });
  final String title;
  final String subtitle;
  final String imageName;
  final double elevation;
  final BoxBorder? border;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: elevation,
        borderRadius: BorderRadius.circular(32),
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
            border: border,
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
                  imageName,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AuthTextStyles.header,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    subtitle,
                    style: AuthTextStyles.subHeader,
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
