import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarStatus();
    throw UnimplementedError();
  }
}


class _BottomNavigationBarStatus extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  void _onTapHandler (int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      onTap: _onTapHandler,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('explore')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('history')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('list')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('person')
        ),
      ],
    );
    throw UnimplementedError();
  }
}