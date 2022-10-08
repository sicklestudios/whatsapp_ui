import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/data.dart';
import 'package:whatsapp_clone/screens/message_screen.dart';
import 'package:whatsapp_clone/widgets/chat_messages.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return tile(index);
              })
        ],
      ),
    );
  }

  Widget tile(index) {
    var info = data[index];
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => MobileMessageScreen()));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(info['profilePic'].toString()),
            ),
            title: Text(
              info['name'].toString(),
              style: const TextStyle(fontSize: 16),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                info['message'].toString(),
                style: const TextStyle(fontSize: 13),
              ),
            ),
            trailing: Text(
              info['time'].toString(),
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ),
          const Divider(
            color: dividerColor,
            indent: 75,
          )
        ],
      ),
    );
  }
}
