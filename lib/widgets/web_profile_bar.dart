import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.077,
      width: size.width * 0.30,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: dividerColor)),
        color: webAppBarColor,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        CircleAvatar(
          radius: 22,
          backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1526800544336-d04f0cbfd700?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
        ),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        )
      ]),
    );
  }
}
