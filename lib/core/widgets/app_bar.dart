import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/back_arrow.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.trailing,
    this.widget2 = const SizedBox(),
    this.leading = const BackArrow(),
  });
  final String title;
  final List<Widget> trailing;
  final Widget? leading;
  final Widget widget2;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      leading: leading,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          widget2
        ],
      ),
      actions: [
        Row(
          children: trailing,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(
        double.maxFinite,
        70,
      );
}
