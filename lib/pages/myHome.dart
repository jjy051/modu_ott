import 'package:flutter/material.dart';
import 'package:modu_ott/components/bottom_navigation_bar.dart';
import 'package:modu_ott/components/app_bar.dart';
import 'package:modu_ott/components/small_chart_item.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(),
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            Text(
              'Overall Ranking',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            SmallChartItem(
              imageAddr: 'assets/images/netflix_.jpeg',
              imageTitle: "There will be blood",
              ranking: "1",
            ),
            SmallChartItem(
              imageAddr: 'assets/images/netflix_99.jpeg',
              imageTitle: "Hairspary",
              ranking: "2",
            ),
            SmallChartItem(
              imageAddr: 'assets/images/netflix_100.jpeg',
              imageTitle: "Philomena",
              ranking: "3",
            ),
            // Spacer(),
            // Expanded(child: Text('expanded test background')),
            SizedBox(height: 20),
            Text(
              'New Original',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            SmallNewItem(
              imageAddr: 'assets/images/netflix_100.jpeg',
              imageTitle: "Philomena",
              platform: "netflix",
            ),
            SmallNewItem(
              imageAddr: 'assets/images/netflix_99.jpeg',
              imageTitle: "Hairspary",
              platform: "tving",
            ),
            SmallNewItem(
              imageAddr: 'assets/images/netflix_.jpeg',
              imageTitle: "There will be blood",
              platform: "watcha",
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBNB(),
    );
  }
}
