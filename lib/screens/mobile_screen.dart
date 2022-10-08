import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/pages/chats_page.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mobileAppBarColor,
          title: const Text(
            'Whatsapp',
            style: TextStyle(
                color: Colors.grey, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ))
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            labelStyle: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("CHATS"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("STATUS"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("CALLS"),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tabColor,
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
        body: ChatsPage(),
      ),
    );
  }
}
