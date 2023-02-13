import 'package:sitara_app/Screens/customer_support_screen.dart';
import 'package:flutter/material.dart';

const backgroundColor = Color(0xff343541);
const botBackgroundColor = Color.fromARGB(255, 255, 255, 255);

class ChatMessageWidget extends StatelessWidget {
  ChatMessageWidget(
      {super.key, required this.text, required this.chatMessageType});

  final String text;
  final ChatMessageType chatMessageType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.all(16),
      color: chatMessageType == ChatMessageType.bot
          ? botBackgroundColor
          : backgroundColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          chatMessageType == ChatMessageType.bot
              ? const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://openai.com/content/images/2022/05/openai-avatar.png'),
                )
              : Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  child: const CircleAvatar(
                    child: Icon(
                      Icons.person,
                    ),
                  ),
                ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Text(
                    text,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum ChatMessageType { user, bot }

class ChatMessage {
  ChatMessage({
    required this.text,
    required this.chatMessageType,
  });

  final String text;
  final ChatMessageType chatMessageType;
}
