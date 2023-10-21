import 'package:ai_chat_app/providers/chat_provider.dart';
import 'package:ai_chat_app/widgets/appbar.dart';
import 'package:ai_chat_app/widgets/chat_item.dart';
import 'package:ai_chat_app/widgets/text_and_voice_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(
        children: [
          Expanded(
            child: Consumer(
              builder: (context, ref, child) {
                final chats = ref.watch(chatsProvider);
                return ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (context, index) => ChatItem(
                    text: chats[index].message,
                    isMe: chats[index].isMe,
                  ),
                );
              },
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
