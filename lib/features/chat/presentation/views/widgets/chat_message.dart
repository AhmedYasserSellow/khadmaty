import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/generated/l10n.dart';

class ChatBottomNavBar extends StatelessWidget {
  const ChatBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
        color: NeutralColors.k500,
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            ChatTextField(),
            SizedBox(
              width: 16,
            ),
            ChatSendButton(),
          ],
        ),
      ),
    );
  }
}

class ChatTextField extends StatelessWidget {
  const ChatTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: TextField(
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    FontAwesomeIcons.paperclip,
                    color: NeutralColors.k200,
                    size: 18,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    FontAwesomeIcons.camera,
                    color: NeutralColors.k200,
                    size: 18,
                  ),
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
            hintText: S.of(context).type_a_message,
            hintStyle: const TextStyle(
              color: NeutralColors.k200,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 1.8,
            ),
          ),
        ),
      ),
    );
  }
}

class ChatSendButton extends StatelessWidget {
  const ChatSendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        ),
        const Icon(
          FontAwesomeIcons.telegram,
          color: PrimaryColors.main,
          size: 52,
        ),
      ],
    );
  }
}
