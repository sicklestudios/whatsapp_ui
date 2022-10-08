import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/pages/chats_page.dart';
import 'package:whatsapp_clone/widgets/chat_messages.dart';

class MobileMessageScreen extends StatefulWidget {
  const MobileMessageScreen({super.key});

  @override
  State<MobileMessageScreen> createState() => _MobileMessageScreemState();
}

class _MobileMessageScreemState extends State<MobileMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Algoma"),
        centerTitle: false,
        backgroundColor: mobileAppBarColor,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          const Expanded(child: ChatMessages()),
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: mobileChatBoxColor,
                prefixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.emoji_emotions)),
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {},
                        color: Colors.grey,
                        icon: const Icon(Icons.attach_file)),
                    IconButton(
                        onPressed: () {},
                        color: Colors.grey,
                        icon: const Icon(Icons.camera_alt))
                  ],
                )),
          )
        ],
      ),
    );
  }
}
