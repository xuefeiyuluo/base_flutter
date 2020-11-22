import 'package:flutter/material.dart';
import 'package:base_flutter/demo/DrawerDemo.dart';
import 'package:base_flutter/demo/BottomNavigationBarDemo.dart';
import 'package:base_flutter/demo/ListViewDemo.dart';
import 'package:base_flutter/demo/OtherDemo.dart';
import './demo/BasicDemo.dart';
import './demo/LayoutDemo.dart';
import './demo/ViewDemo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
    );
    throw UnimplementedError();
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(

            title: Text('NIHAO'),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'search',
                onPressed: () => debugPrint('search'),
              )
            ],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2.0,
              tabs: [
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.directions_boat)),
              ],
            ),
          ),
          // body: Hello(),
          body: TabBarView(
            children: [
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              ViewDemo()
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ),
    );
  }
}

