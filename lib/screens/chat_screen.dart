import 'package:ai_chat_app/widgets/appbar.dart';
import 'package:ai_chat_app/widgets/chat_item.dart';
import 'package:ai_chat_app/widgets/text_and_voice_field.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) =>
                  const ChatItem(text: "This is me", isMe: true),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(12.0),
            child: const TextAndVoiceField(),
          ),
        ],
      ),
    );
  }
}
