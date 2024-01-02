import 'package:flutter/widgets.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';

class TermsTextEN extends StatelessWidget {
  const TermsTextEN({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text:
                'By clicking “Continue with Email/Apple/Google/Facebook” above, you agree to Lance hub ',
            style: TextStyle(
              color: NeutralColors.k300,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'Terms & Conditional',
            style: TextStyle(
              color: PrimaryColors.main,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: ' and ',
            style: TextStyle(
              color: NeutralColors.k300,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'Privacy Policy.',
            style: TextStyle(
              color: PrimaryColors.main,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}

class TermsTextAR extends StatelessWidget {
  const TermsTextAR({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text:
                " بالضغط على 'متابعة بواسطة 'البريد الالكترونى/ابل/جوجل:فيسبوك' اعلاه فانك توافق على ",
            style: TextStyle(
              color: NeutralColors.k300,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'الشروط والأحكام',
            style: TextStyle(
              color: PrimaryColors.main,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: ' و ',
            style: TextStyle(
              color: NeutralColors.k300,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'سياسة الخصوصية',
            style: TextStyle(
              color: PrimaryColors.main,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: ' الخاصة بخدماتى.',
            style: TextStyle(
              color: NeutralColors.k300,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
