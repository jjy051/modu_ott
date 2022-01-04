import 'package:flutter/material.dart';

class ImageListItem extends StatelessWidget {
  String imageAddr;
  String imageTitle;
  String imageDescription;

  ImageListItem(
      {this.imageAddr = 'assets/images/netflix_.jpeg',
      this.imageTitle = 'Title',
      this.imageDescription = 'See more details'});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageAddr,
              height: 400,
              width: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              imageTitle,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              imageDescription,
              style: TextStyle(color: Colors.grey, fontSize: 12),
            )
          ],
        ));
  }
}
