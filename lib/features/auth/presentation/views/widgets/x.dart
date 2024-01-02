import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/auth/presentation/views/auth_view.dart';

class X extends StatelessWidget {
  const X({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, AuthView.id);
      },
      icon: Container(
        width: 32,
        height: 32,
        decoration: ShapeDecoration(
          color: NeutralColors.k400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: const Icon(
          FontAwesomeIcons.x,
          size: 12,
          color: NeutralColors.kWhite,
        ),
      ),
    );
  }
}
