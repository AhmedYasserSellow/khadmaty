import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/chat/data/models/chat_model.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({super.key, required this.chatModel});
  final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 36),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: SecondaryColors.surface,
            radius: 24,
            backgroundImage: AssetImage(
              chatModel.image,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chatModel.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                chatModel.message,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: NeutralColors.k200,
                  fontSize: 14,
                ),
              )
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              chatModel.time,
              style: const TextStyle(
                fontSize: 12,
                color: NeutralColors.k200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
