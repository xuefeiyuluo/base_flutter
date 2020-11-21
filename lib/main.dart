import 'package:flutter/material.dart';
import 'model/Post.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.yellow
      ),
    );
    throw UnimplementedError();
  }
}


class Home extends StatelessWidget {
  Widget _listItemBuild(BuildContext context, int index) {
    return Container(
      color: Colors.red,
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image.network(posts[index].imeurl),
          SizedBox(height: 20),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 50),
          Text(
            posts[index].auth,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('NIHAO'),
        elevation: 0.0,
      ),
      // body: Hello(),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuild,
        )
    );
    throw UnimplementedError();
  }
}


class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.yellow,
        ),
      ),
    );
    throw UnimplementedError();
  }
}
