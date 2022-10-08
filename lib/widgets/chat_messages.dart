import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data.dart';
import 'package:whatsapp_clone/widgets/my_message_card.dart';
import 'package:whatsapp_clone/widgets/senders_message_card.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        var message = messages[index];
        if (message['isUser'] == true) {
          //its me
          return MyMessageCard(
              message: message['text'].toString(),
              date: message['time'].toString());
        }
        //other user
        return SenderMessageCard(
            message: message['text'].toString(),
            date: message['time'].toString());
      },
    );
  }
}
