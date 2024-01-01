import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/home/data/models/profile_model.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/drawer_item.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/log_out.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({super.key, required this.profileModel});
  final ProfileModel profileModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: SecondaryColors.surface,
        child: Column(
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
              'Name: ' '${profileModel.name}',
              style: const TextStyle(color: Colors.black, fontSize: 18),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Email: ' '${profileModel.email}',
              style: const TextStyle(color: Colors.black, fontSize: 18),
            ),
            const SizedBox(
              height: 16,
            ),
            DrawerItem(
              text: 'Home',
              icon: FontAwesomeIcons.house,
              onTap: () {
                HomeCubit.get(context).changePage(true);
              },
              isSelected: HomeCubit.get(context).isHome,
            ),
            DrawerItem(
              text: 'Chats',
              icon: FontAwesomeIcons.message,
              onTap: () {
                HomeCubit.get(context).changePage(false);
              },
              isSelected: !HomeCubit.get(context).isHome,
            ),
            const Spacer(),
            const LogOutButton(),
            const SizedBox(
              height: 8,
            ),
            const Text(
              '© 2023 Khadmaty All rights reserved.',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
