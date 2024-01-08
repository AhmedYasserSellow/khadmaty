import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/generated/l10n.dart';

List<String> locales = [
  'en',
  'ar',
];

class LanguageRadioListTile extends StatelessWidget {
  const LanguageRadioListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: const Icon(
        FontAwesomeIcons.language,
        color: SecondaryColors.main,
      ),
      tilePadding: EdgeInsets.zero,
      childrenPadding: EdgeInsets.zero,
      shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      )),
      title: Text(S.of(context).languages),
      children: [
        RadioListTile(
          title: Text(S.of(context).lang_name),
          value: locales[0],
          groupValue: HomeCubit.get(context).locale,
          onChanged: (value) {
            HomeCubit.get(context).changeLocaleFromHomePage(value.toString());
          },
        ),
        RadioListTile(
          title: Text(S.of(context).other_lang_name),
          value: locales[1],
          groupValue: HomeCubit.get(context).locale,
          onChanged: (value) {
            HomeCubit.get(context).changeLocaleFromHomePage(value.toString());
          },
        ),
      ],
    );
  }
}
