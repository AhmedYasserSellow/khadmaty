import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key, required this.icon, required this.title, this.onTap});
  final IconData icon;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        icon,
        color: SecondaryColors.main,
      ),
      title: Text(
        title,
      ),
      trailing: Icon(
        HomeCubit.get(context).en
            ? FontAwesomeIcons.angleRight
            : FontAwesomeIcons.angleLeft,
        size: 16,
        color: NeutralColors.k100,
      ),
    );
  }
}
