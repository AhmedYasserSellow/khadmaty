import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/add_money_button.dart';

class BalanceBoxView extends StatelessWidget {
  const BalanceBoxView({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: NeutralColors.kWhiteGrey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Balance',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          const Row(
            children: [
              Text(
                'EGP 000,000,000',
                style: TextStyle(
                  color: SecondaryColors.main,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              Spacer(),
              Icon(FontAwesomeIcons.eye)
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                flex: 10,
                child: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Spacer(),
              const AddMoneyButton(),
            ],
          )
        ],
      ),
    );
  }
}

class BalanceBoxBlurred extends StatelessWidget {
  const BalanceBoxBlurred({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        BalanceBoxView(
          name: name,
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 4,
              sigmaY: 4,
            ),
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        Center(
          child: Transform.rotate(
            angle: math.pi / 10,
            child: const Text(
              'Payment Service is coming Soon',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}