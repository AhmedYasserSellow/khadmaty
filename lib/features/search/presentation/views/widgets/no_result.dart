import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';
import 'package:graduation_project/core/utils/theme/text_styles.dart';
import 'package:graduation_project/generated/l10n.dart';

class NoResultView extends StatelessWidget {
  const NoResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Assets.kNoResult,
          width: 200,
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          S.of(context).no_result,
          style: TextStyles.header.copyWith(fontSize: 20),
        ),
      ],
    );
  }
}
