import 'package:flutter/material.dart';
import 'package:modu_ott/components/app_bar.dart';
import 'package:modu_ott/components/bottom_navigation_bar.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Search'),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.asset(
            //   "assets/images/netflix_.jpeg",
            //   fit: BoxFit.cover,
            // ),
            Text(
              "Overall Search",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            TextFormField(
              validator: (value) =>
                  value!.isEmpty ? "Enter your content" : null,
              decoration: InputDecoration(
                hintText: "Enter contents you search",
                hintStyle: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(height: 30),
            Spacer(),
            Text(
              "Most popular keyword",
              style: TextStyle(fontSize: 20),
            ),
            Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBNB(selectedIndex: 3),
    );
  }
}
