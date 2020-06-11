import 'package:flutter/material.dart';
import 'package:meetboxui/Call.dart';
import 'package:meetboxui/Inbox.dart';
import 'package:meetboxui/Status.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'MeetBox',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 25,
            ),
          ),
          bottom: TabBar(
            controller: controller,
            indicatorColor: Colors.grey[400],
            unselectedLabelColor: Colors.grey[600],
            tabs: [
              Tab(
                child: Text(
                  'Inbox',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Call',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Status',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            Container(
              child: Inbox(),
            ),
            Container(
              child: Call(),
            ),
            Container(
              child: Status(),
            ),
          ],
        ),
      ),
    );
  }
}
