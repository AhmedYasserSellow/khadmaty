import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/core/widgets/page_builder.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/account_created_body.dart';
import 'package:graduation_project/features/auth/presentation/views/widgets/x.dart';

class AccountCreated extends StatelessWidget {
  const AccountCreated({super.key});
  static String id = 'AccountCreated';
  @override
  Widget build(BuildContext context) {
    return const PageBuilder(
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppBar(
            title: '',
            trailing: [],
            leading: X(),
          ),
        ),
        SliverFillRemaining(hasScrollBody: false, child: AccountCreatedBody()),
      ],
    );
  }
}
