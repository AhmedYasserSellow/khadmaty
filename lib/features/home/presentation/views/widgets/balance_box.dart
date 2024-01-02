import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/add_money_button.dart';
import 'package:graduation_project/generated/l10n.dart';

class BalanceBoxView extends StatelessWidget {
  const BalanceBoxView({
    super.key,
  });

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
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Balance',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          Row(
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
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                flex: 10,
                child: Text(
                  'Khdmaty',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Spacer(),
              AddMoneyButton(),
            ],
          )
        ],
      ),
    );
  }
}

class BalanceBoxBlurred extends StatelessWidget {
  const BalanceBoxBlurred({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const BalanceBoxView(),
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
            child: Text(
              S.of(context).payment_service,
              style: const TextStyle(
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
