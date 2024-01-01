import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      child: Image.asset(
        Assets.kLogo,
        width: 35,
      ),
    );
  }
}
