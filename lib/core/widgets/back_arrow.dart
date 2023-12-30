import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Container(
        width: 32,
        height: 32,
        // padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: NeutralColors.k400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: const Icon(
          FontAwesomeIcons.angleLeft,
          size: 12,
          color: NeutralColors.kWhite,
        ),
      ),
    );
  }
}
