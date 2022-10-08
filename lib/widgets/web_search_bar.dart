import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.077,
      width: size.width * 0.30,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(right: BorderSide(color: dividerColor)),
        color: webAppBarColor,
      ),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: searchBarColor,
            prefix: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.search,
                size: 18,
              ),
            ),
            hintText: "Search or Start a new Chat",
            hintStyle: TextStyle(fontSize: 15),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(27),
                borderSide: BorderSide(width: 0, style: BorderStyle.none)),
            contentPadding: EdgeInsets.all(10)),
      ),
    );
  }
}
