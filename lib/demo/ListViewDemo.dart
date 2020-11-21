import 'package:flutter/material.dart';
import 'package:base_flutter/model/Post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuild(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image.network(posts[index].imeurl),
          SizedBox(height: 20),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 30),
          Text(
            posts[index].auth,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuild,
    );
    throw UnimplementedError();
  }
}