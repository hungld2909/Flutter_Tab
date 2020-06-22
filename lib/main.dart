import 'package:flutter/material.dart';
import 'tab1.dart';
import 'tab2.dart';
import 'tab3.dart';
import 'tab4.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final tabController = new DefaultTabController(
      length: 4, 
      child: new Scaffold(
        appBar: new AppBar(
          bottom: new TabBar(
            indicatorColor: Colors.red,
            indicatorWeight: 3.0,
            tabs: [
            new Tab(icon: new Icon(Icons.home),text: "Home",),
            new Tab(icon: new Icon(Icons.group),text: "Group",),
            new Tab(icon: new Icon(Icons.chat),text: "Chat",),
            new Tab(icon: new Icon(Icons.cloud_queue),text: "Cloud",),
          ]),
        ),
        body: new TabBarView(
          children: [
            new tab1(),
            new tab2(),
            new tab3(),
            new tab4()
          ]
          ),
      )
      );
    return new MaterialApp(
      title: "Tabs example",
      home: tabController,
    );
  }
}