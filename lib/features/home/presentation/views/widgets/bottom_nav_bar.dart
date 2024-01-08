import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/generated/l10n.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: NeutralColors.k500,
      ),
      height: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: GNav(
          selectedIndex: HomeCubit.get(context).currentIndex,
          onTabChange: (value) {
            HomeCubit.get(context).changePage(value);
          },
          backgroundColor: NeutralColors.k500,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: PrimaryColors.main,
          gap: 12,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          tabBorderRadius: 30,
          tabs: [
            GButton(
              icon: FontAwesomeIcons.house,
              text: S.of(context).home,
            ),
            GButton(
              icon: FontAwesomeIcons.magnifyingGlass,
              text: S.of(context).search,
            ),
            GButton(
              icon: FontAwesomeIcons.message,
              text: S.of(context).chats,
            ),
            GButton(
              icon: FontAwesomeIcons.gear,
              text: S.of(context).settings,
            ),
          ],
        ),
      ),
    );
  }
}
