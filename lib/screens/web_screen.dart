import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/pages/chats_page.dart';
import 'package:whatsapp_clone/widgets/chat_messages.dart';
import 'package:whatsapp_clone/widgets/web_profile_bar.dart';
import 'package:whatsapp_clone/widgets/web_search_bar.dart';
import 'package:whatsapp_clone/widgets/web_chat_appbar.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: const [WebProfileBar(), WebSearchBar(), ChatsPage()],
            ),
          )),
          Container(
            width: size.width * 0.7,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(backgroundImage))),
            child: Column(
              children: [
                const WebChatAppBar(),
                const Expanded(child: ChatMessages()),
                Container(
                  height: size.height * 0.07,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: webChatBoxColor,
                      border: Border(bottom: BorderSide(color: dividerColor))),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.emoji_emotions_outlined,
                              color: Colors.grey)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: searchBarColor,
                              hintText: 'Type a message',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                      width: 0, style: BorderStyle.none)),
                              contentPadding: const EdgeInsets.all(10)),
                        ),
                      ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
