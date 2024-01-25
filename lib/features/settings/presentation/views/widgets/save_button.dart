import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/generated/l10n.dart';

class SaveChangesButton extends StatelessWidget {
  const SaveChangesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 32,
        width: 74,
        decoration: BoxDecoration(
            color: NeutralColors.k400, borderRadius: BorderRadius.circular(52)),
        child: Center(
          child: Text(
            S.of(context).save,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
