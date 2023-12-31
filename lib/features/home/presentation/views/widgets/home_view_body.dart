import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/constants/services_list.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/balance_box.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/service_box.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.name});
  final String name;
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
          BalanceBoxBlurred(
            name: name,
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
          ),
        ],
      ),
    );
  }
}
