import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';
import 'package:graduation_project/core/widgets/sheet.dart';
import 'package:graduation_project/features/chat/data/models/chat_model.dart';
import 'package:graduation_project/features/chat/presentation/views/widgets/chat_header.dart';
import 'package:graduation_project/features/search/presentation/views/widgets/search_bar.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 21,
          ),
          child: Sheet(
            child: Column(
              children: [
                const SizedBox(
                  height: 72,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: chatList.length,
                      itemBuilder: (context, index) {
                        return ChatHeader(
                          chatModel: chatList[index],
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
        const CustomSearchBar(
          hintText: 'Search Chat',
        ),
      ],
    );
  }
}

List<ChatModel> chatList = [
  ChatModel(
    message: 'Hello mr jack',
    time: '12:08 PM',
    name: 'Jones',
    image: Assets.kElectrician,
  ),
  ChatModel(
    message: 'Hello I am a new user for khdmaty',
    time: '11:47 AM',
    name: 'Dico',
    image: Assets.kUser,
  ),
];
