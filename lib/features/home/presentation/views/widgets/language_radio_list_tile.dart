import 'package:flutter/widgets.dart';

class LanguageRadioListTile extends StatefulWidget {
  const LanguageRadioListTile({super.key});

  @override
  State<LanguageRadioListTile> createState() => _LanguageRadioListTileState();
}

List<String> locales = [
  'en',
  'ar',
];

class _LanguageRadioListTileState extends State<LanguageRadioListTile> {
  @override
  Widget build(BuildContext context) {
    return const Column();
  }
}
