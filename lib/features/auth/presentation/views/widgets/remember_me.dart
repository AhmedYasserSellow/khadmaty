import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: const Icon(
              FontAwesomeIcons.square,
              size: 20,
              color: NeutralColors.k300,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            'Remember me',
            style: TextStyle(
              color: NeutralColors.k500,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          const Text(
            'Forgot password ?',
            style: TextStyle(
              color: NeutralColors.k500,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
