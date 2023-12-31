import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.isSelected,
  });
  final String text;
  final IconData icon;
  final void Function() onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      selectedColor: SecondaryColors.main,
      selected: isSelected,
      leading: Icon(icon),
      title: Text(
        text,
        style: const TextStyle(fontFamily: 'Cairo'),
      ),
      onTap: onTap,
    );
  }
}
