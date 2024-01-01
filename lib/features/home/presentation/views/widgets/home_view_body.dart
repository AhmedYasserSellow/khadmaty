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
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          SliverOpacity(
            opacity: 0.99,
            sliver: SliverToBoxAdapter(
              child: BalanceBoxBlurred(
                name: name,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          const SliverToBoxAdapter(
            child: Text(
              'Available Service',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SliverGrid.builder(
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
        ],
      ),
    );
  }
}
