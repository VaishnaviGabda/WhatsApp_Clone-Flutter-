import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  final images;
  final title;
  const CallsScreen({Key? key, this.images, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
            contentPadding: EdgeInsets.only(right: 10),
            leading: Container(
              height: 60,
              width: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage(images),
              ),
            ),
            title: Text(title),
            subtitle: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.call_received,
                    size: 20,
                    color: Colors.red,
                  ),
                  Text('Yesterday , 12:14'),
                ],
              ),
            ),
            trailing: Icon(
              Icons.call,
              size: 25,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
