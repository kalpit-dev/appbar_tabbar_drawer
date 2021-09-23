import 'package:appbar_tabbar_drawer/main.dart';
import 'package:flutter/material.dart';

class secondPage extends StatefulWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  _secondPageState createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text("Second Page"),
          bottom: TabBar(
            tabs: [
              Icon(Icons.ac_unit),
              Icon(Icons.access_alarm),
              Icon(Icons.accessibility_rounded),
            ],
          ),
        ),
        body: TabBarView(children: [
          InkWell(
            onTap: () {
              scaffoldKey.currentState?.openDrawer();
            },
            child: Icon(
              Icons.menu,
              size: 100,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pop(true);
            },
            child: Icon(
              Icons.arrow_back,
              size: 100,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pop(true);
            },
            child: Icon(
              Icons.yard,
              size: 100,
            ),
          ),
        ]),
      ),
    );
  }
}
