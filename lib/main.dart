import 'package:appbar_tabbar_drawer/firstPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All Properties of AppBar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'All Properties of AppBar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class myCustomAppBar extends AppBar {
  myCustomAppBar({Key? key, required String title})
      : super(key: key, title: Text(title));
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.call_to_action_sharp, size: 40),
          )
        ],
        leading: Icon(Icons.cabin, size: 40),
        elevation: 100,
        centerTitle: false,
        titleSpacing: 20,
        toolbarHeight: 100,
        leadingWidth: 70,
        shadowColor: Colors.red,
        backgroundColor: Colors.green,
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.yellow),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => firstPage()));
                },
                child: Icon(Icons.navigate_next, size: 100))
          ],
        ),
      ),
    );
  }
}
