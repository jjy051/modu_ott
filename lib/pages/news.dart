import 'package:flutter/material.dart';
import 'package:modu_ott/components/bottom_navigation_bar.dart';
import 'package:modu_ott/components/app_bar.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'News'),
      body: Center(
        child: Text("What's new?!?",
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      // bottomNavigationBar: CustomBNB(),
    );
  }
}
