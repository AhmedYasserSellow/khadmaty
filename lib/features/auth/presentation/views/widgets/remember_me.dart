import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/constants/prefs_keys.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  IconData icon = FontAwesomeIcons.square;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        children: [
          GestureDetector(
            onTap: () async {
              final prefs = await GetInstance.prefs;
              if (isSelected) {
                isSelected = !isSelected;
                icon = FontAwesomeIcons.square;
                prefs.setBool(PrefsKeys.kIsLoggedIn, false);
              } else {
                isSelected = !isSelected;
                icon = FontAwesomeIcons.squareCheck;
                prefs.setBool(PrefsKeys.kIsLoggedIn, true);
              }
              setState(() {});
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: 20,
                  color: NeutralColors.k300,
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
              ],
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
