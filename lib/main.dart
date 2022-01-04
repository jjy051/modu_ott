import 'package:flutter/material.dart';
import 'package:modu_ott/pages/myHome.dart';
import 'package:modu_ott/pages/myRanking.dart';
import 'package:modu_ott/pages/searchPage.dart';
import 'package:modu_ott/pages/newOriginal.dart';
import 'package:modu_ott/pages/news.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'modu ott',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "PatuaOne"),
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHome(),
        '/ranking': (context) => MyRanking(),
        '/original': (context) => NewOriginal(),
        '/search': (context) => SearchPage(),
        '/news': (context) => NewsPage(),
      },
    );
  }
}
