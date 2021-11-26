import 'package:flutter/material.dart';
import 'package:whatsppclone/calls.dart';
import 'package:whatsppclone/chats.dart';
import 'package:whatsppclone/status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    _tabController = new TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('WhatsApp'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
        bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.all(10),
            tabs: [
              Icon(Icons.camera_alt),
              Container(
                  width: 110,
                  alignment: Alignment.center,
                  child: Text('CHATS')),
              Container(
                  width: 110,
                  alignment: Alignment.center,
                  child: Text('STATUS')),
              Container(
                  width: 110,
                  alignment: Alignment.center,
                  child: Text('CALLS')),
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('CAMERA'),
          ListView.builder(
              //start chats
              itemCount: 2,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ChatScreen(
                      images: 'user/Vaishnavi.jpeg',
                      title: 'Vaishnavi Gabda',
                      msg: 'Heyy I work for LinkCode Technologies',
                    ),
                    ChatScreen(
                      images: 'user/Capture.JPG',
                      title: 'Rahul Sir',
                      msg: 'Hello Everyone',
                    ),
                    ChatScreen(
                      images: 'user/RahulSir.jpg',
                      title: 'Pritam Sir',
                      msg: 'Hello Everyone',
                    ),
                  ],
                );
              }),

          //start status

          ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    StatusScreen(
                      images: 'user/Vaishnavi.jpeg',
                      time: '10 mintues ago',
                    ),
                  ],
                );
              }),

          //start calls
          ListView.builder(
              //start chats
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CallsScreen(
                      images: 'user/Vaishnavi.jpeg',
                      title: 'Vaishnavi Gabda',
                    ),
                    CallsScreen(
                      images: 'user/Capture.JPG',
                      title: 'Rahul Sir',
                    ),
                    CallsScreen(
                      images: 'user/Capture.JPG',
                      title: 'Pritam Sir',
                    ),
                  ],
                );
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.message),
      ),
    );
  }
}
