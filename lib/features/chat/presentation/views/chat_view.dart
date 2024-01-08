import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/sheet.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Sheet(
      child: CustomScrollView(),
    );
  }
}
