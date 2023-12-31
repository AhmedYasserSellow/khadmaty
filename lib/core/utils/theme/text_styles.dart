import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';

abstract class TextStyles {
  static TextStyle header = const TextStyle(
    color: NeutralColors.k500,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle subHeader = const TextStyle(
    color: NeutralColors.k300,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
