import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/constants/services_list.dart';
import 'package:graduation_project/features/home/data/models/profile_model.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/profile_box.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/service_box.dart';

class UserView extends StatelessWidget {
  const UserView({super.key, required this.profileModel});
  final ProfileModel profileModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 32,
          ),
          ProfileBox(
            profileModel: profileModel,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Available Service',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: servicesList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return ServiceBox(
                  serviceModel: servicesList[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
