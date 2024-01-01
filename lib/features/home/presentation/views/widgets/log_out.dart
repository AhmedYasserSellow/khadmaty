import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/drawer_item.dart';
import 'package:graduation_project/generated/l10n.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerItem(
      isSelected: false,
      onTap: () async {
        HomeCubit.get(context).logOut(context);
      },
      text: S.of(context).sign_out,
      icon: FontAwesomeIcons.arrowRightFromBracket,
    );
  }
}
