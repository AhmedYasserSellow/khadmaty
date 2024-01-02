import 'package:flutter/material.dart';
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
      title: Text(S.of(context).languages),
      children: [
        RadioListTile(
          title: Text(S.of(context).lang_name),
          value: locales[0],
          groupValue: HomeCubit.get(context).locale,
          onChanged: (value) {
            HomeCubit.get(context).changeLocaleFromHomePage(value.toString());
            HomeCubit.get(context).scaffoldKey.currentState!.closeEndDrawer();
          },
        ),
        RadioListTile(
          title: Text(S.of(context).other_lang_name),
          value: locales[1],
          groupValue: HomeCubit.get(context).locale,
          onChanged: (value) {
            HomeCubit.get(context).changeLocaleFromHomePage(value.toString());
            HomeCubit.get(context).scaffoldKey.currentState!.closeEndDrawer();
          },
        ),
      ],
    );
  }
}
