import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/home/data/models/profile_model.dart';
import 'package:graduation_project/generated/l10n.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({super.key, required this.profileModel});
  final ProfileModel profileModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 32,
        ),
        Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          color: SecondaryColors.main,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              profileModel.image,
              width: 150,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          '${S.of(context).your_name}: ' '${profileModel.name}',
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          '${S.of(context).email}: ' '${profileModel.email}',
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
