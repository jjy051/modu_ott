import 'package:flutter/material.dart';
import 'package:modu_ott/components/app_bar.dart';
import 'package:modu_ott/components/bottom_navigation_bar.dart';
import 'package:modu_ott/components/image_list_item.dart';

class NewOriginal extends StatefulWidget {
  @override
  _NewOriginalState createState() => _NewOriginalState();
}

class _NewOriginalState extends State<NewOriginal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'New Original'),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            Container(
              child: Text(
                "New Original - Netflix",
                style: TextStyle(color: Colors.black87, fontSize: 20),
              ),
            ),
            SizedBox(height: 2),
            ImageListItem(
              imageAddr: 'assets/images/netflix_.jpeg',
              imageTitle: "There will be blood",
            ),
            ImageListItem(
              imageAddr: 'assets/images/netflix_99.jpeg',
              imageTitle: "Hairspray",
            ),
            ImageListItem(
              imageAddr: 'assets/images/netflix_100.jpeg',
              imageTitle: "Philomena",
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBNB(selectedIndex: 2),
    );
  }
}
