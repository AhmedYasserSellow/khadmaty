import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
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
          widget2: const Text(
            'Online',
            style: TextStyle(
              color: NeutralColors.k200,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          // trailing: [
          //   IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       FontAwesomeIcons.idBadge,
          //       color: Colors.white,
          //       // size: 22,
          //     ),
          //   ),
          //   const SizedBox(
          //     width: 12,
          //   )
          // ],
          trailing: const [],
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: Sheet(
            child: Column(
              children: [],
            ),
          ),
        ),
      ],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ChatBottomNavBar(),
          SizedBox(
            height: MediaQuery.of(context).viewInsets.bottom,
          )
        ],
      ),
    );
  }
}
