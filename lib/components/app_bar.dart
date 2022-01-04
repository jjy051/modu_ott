import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  String title;

  CustomAppBar({this.title = 'Overall Chart'});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.lightGreen,
// elevation: 1.0,
      actions: [
        Icon(
          CupertinoIcons.archivebox,
          color: Colors.black54,
        ),
        // SizedBox(width: 15),
        SizedBox(width: 15),
        InkWell(
            onTap: () {
              print("what's new?!?");
              Navigator.pushNamed(context, "/news");
            },
            child: Icon(
              CupertinoIcons.alarm,
              color: Colors.black,
            )),
        SizedBox(width: 10),
      ],
    );
  }
}
