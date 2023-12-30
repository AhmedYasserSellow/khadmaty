import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/select_role_section.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/text_styles.dart';

class RoleSelectorView extends StatelessWidget {
  const RoleSelectorView({super.key});
  static String id = 'RoleSelectorView';
  @override
  Widget build(BuildContext context) {
    final email = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: const CustomAppBar(
        leading: SizedBox(),
        title: 'Role Selector',
        trailing: [],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose your role',
              style: AuthTextStyles.header,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Which type of user are you?',
              style: AuthTextStyles.subHeader,
            ),
            SelectRoleSection(
              email: email,
            ),
          ],
        ),
      ),
    );
  }
}
