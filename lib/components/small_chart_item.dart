import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SmallChartItem extends StatelessWidget {
  String imageAddr;
  String imageTitle;
  String ranking;

  SmallChartItem(
      {this.imageAddr = 'assets/images/netflix_.jpeg',
      this.imageTitle = 'Title',
      this.ranking = '1'});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Image.asset(
              imageAddr,
              fit: BoxFit.cover,
              height: 50,
              width: 30,
            ),
            SizedBox(width: 20),
            Text(ranking),
            SizedBox(width: 20),
            Text(
              imageTitle,
              // style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Spacer(),
            Column(
              children: [
                Icon(
                  CupertinoIcons.triangle_fill,
                  color: Colors.redAccent,
                ),
                Text("2"),
              ],
            )
          ],
        ));
  }
}

class SmallNewItem extends StatelessWidget {
  String imageAddr;
  String imageTitle;
  String platform;

  SmallNewItem(
      {this.imageAddr = 'assets/images/netflix_.jpeg',
      this.imageTitle = 'Title',
      this.platform = 'netflix'});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Image.asset(
            imageAddr,
            fit: BoxFit.cover,
            height: 50,
            width: 30,
          ),
          SizedBox(width: 20),
          Text(
            imageTitle,
            // style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Spacer(),
          Text(
            platform,
            style: TextStyle(color: Colors.redAccent),
          ),
        ],
      ),
    );
  }
}
