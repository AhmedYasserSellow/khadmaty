import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';

class MainAuthButton extends StatelessWidget {
  const MainAuthButton({
    super.key,
    required this.text,
    this.onTap,
    this.buttonColor = PrimaryColors.main,
    this.textColor = Colors.white,
  });
  final String text;
  final void Function()? onTap;
  final Color buttonColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(52),
          color: buttonColor,
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
