// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key, this.images, this.title, this.msg})
      : super(key: key);

  final images;
  final title;
  final msg;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
            contentPadding: EdgeInsets.only(right: 10),
            leading: Container(
              height: 55,
              child: CircleAvatar(
                backgroundImage: AssetImage(images),
              ),
            ),
            title: Text(title),
            subtitle: Text(msg),
            trailing: Column(
              children: [
                Text('12:00'),
                Container(
                  width: 24,
                  height: 20,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColorLight,
                    child: Text(
                      '9',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Divider()
      ],
    );
  }
}
