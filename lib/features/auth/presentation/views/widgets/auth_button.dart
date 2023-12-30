import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.color,
    required this.text,
    this.textColor = Colors.white,
    this.icon,
    this.onTap,
  });
  final Color color;
  final Color textColor;
  final String text;
  final IconData? icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(52),
            color: color,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: NeutralColors.kWhite,
                size: 24,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
