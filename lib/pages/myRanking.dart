import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:modu_ott/components/bottom_navigation_bar.dart';
import 'package:modu_ott/components/app_bar.dart';
import 'package:modu_ott/components/image_list_item.dart';

class MyRanking extends StatefulWidget {
  @override
  _MyRankingState createState() => _MyRankingState();
}

class _MyRankingState extends State<MyRanking> {
  // TabController? _tabController;
  //
  // List<String> selectedPic = [
  //
  // ]
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = new TabController(length: 2, vsync: this)
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Ranking'),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            Container(
              child: Text(
                "This is top ranking - NetFlix",
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
      bottomNavigationBar: CustomBNB(selectedIndex: 1),
    );
  }
}
