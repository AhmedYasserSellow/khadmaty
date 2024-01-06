import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: SecondaryColors.main,
      ),
    );
  }
}
