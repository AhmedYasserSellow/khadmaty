import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/core/widgets/page_builders.dart';
import 'package:graduation_project/core/widgets/sheet.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/generated/l10n.dart';

List<String> locales = [
  'en',
  'ar',
];

class LanguagesView extends StatelessWidget {
  const LanguagesView({super.key});
  static String id = 'LanguagesView';
  @override
  Widget build(BuildContext context) {
    return NestedScrollViewPageBuilder(
      appBar: CustomAppBar(
        title: S.of(context).languages,
        trailing: const [],
      ),
      body: Sheet(
        child: Column(
          children: [
            RadioListTile(
              title: Text(S.of(context).lang_name),
              value: locales[0],
              groupValue: HomeCubit.get(context).locale,
              onChanged: (value) {
                HomeCubit.get(context)
                    .changeLocaleFromHomePage(value.toString());
              },
            ),
            RadioListTile(
              title: Text(S.of(context).other_lang_name),
              value: locales[1],
              groupValue: HomeCubit.get(context).locale,
              onChanged: (value) {
                HomeCubit.get(context)
                    .changeLocaleFromHomePage(value.toString());
              },
            ),
          ],
        ),
      ),
    );
  }
}
