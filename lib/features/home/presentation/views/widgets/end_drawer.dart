import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        child: Column(
          children: [
            Image.asset(
              profileModel.image,
              width: 200,
            ),
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
            const LogOutButton(),
            const SizedBox(
              height: 4,
            ),
            const Text('© 2023 Khadmaty All rights reserved.'),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
