import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/core/widgets/sheet.dart';
import 'package:graduation_project/generated/l10n.dart';

class MyAccountView extends StatelessWidget {
  const MyAccountView({super.key});
  static String id = 'MyAccountView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: CustomAppBar(
                title: S.of(context).my_account,
                trailing: const [],
              ),
            ),
          ],
          body: const Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 38),
                child: Sheet(child: Column()),
              ),
              CircleAvatar(
                radius: 38,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
