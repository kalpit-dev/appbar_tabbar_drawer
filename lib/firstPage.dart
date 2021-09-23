import 'package:appbar_tabbar_drawer/main.dart';
import 'package:appbar_tabbar_drawer/secondPage.dart';
import 'package:flutter/material.dart';

class firstPage extends StatefulWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: myCustomAppBar(title: 'First Page'),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('My App Drawer'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Close Drawer'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Back to Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              scaffoldKey.currentState?.openDrawer();
            },
            child: Icon(
              Icons.menu,
              size: 100,
            ),
          ),
          SizedBox(
            height: 100,
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
          SizedBox(
            height: 100,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => secondPage()));
            },
            child: Icon(
              Icons.navigate_next,
              size: 100,
            ),
          ),
        ],
      ),
    );
  }
}
