import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';

class AddMoneyButton extends StatelessWidget {
  const AddMoneyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: PrimaryColors.main,
      ),
      child: const Row(
        children: [
          SizedBox(
            width: 16,
          ),
          Icon(
            FontAwesomeIcons.creditCard,
            color: Colors.white,
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            'Top Up',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
