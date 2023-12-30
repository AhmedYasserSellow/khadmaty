import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/home/data/models/profile_model.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({super.key, required this.profileModel});
  final ProfileModel profileModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: NeutralColors.kWhiteGrey,
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
              profileModel.image,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name: ' '${profileModel.name}',
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Email: ' '${profileModel.email}',
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          )
        ],
      ),
    );
  }
}
