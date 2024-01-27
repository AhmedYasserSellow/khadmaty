import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/app_bar.dart';
import 'package:graduation_project/core/widgets/page_builders.dart';
import 'package:graduation_project/core/widgets/sheet.dart';
import 'package:graduation_project/features/chat/data/models/chat_model.dart';
import 'package:graduation_project/features/chat/presentation/views/widgets/chat_message.dart';

class InboxView extends StatelessWidget {
  const InboxView({super.key});
  static String id = 'InboxView';
  @override
  Widget build(BuildContext context) {
    final chatModel =
        ModalRoute.of(context)!.settings.arguments as ChatHeaderModel;
    return PageBuilder(
      extendBody: true,
      slivers: [
        CustomAppBar(
          title: chatModel.name,
          trailing: const [],
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: Sheet(),
        ),
      ],
      bottomNavigationBar: const ChatBottomNavBar(),
    );
  }
}
