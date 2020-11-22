import 'package:base_flutter/model/ListDemo.dart';
import 'package:flutter/material.dart';
import '../demo/ListViewDemo.dart';

class ViewDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return  GridViewExtendDemo();
    throw UnimplementedError();
  }
}


class GridViewBuildDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.grey,
      child: Image.network(posts[index].imageUrl,fit: BoxFit.cover,),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      itemCount: posts.length,
      padding: EdgeInsets.all(10.0),
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        // crossAxisCount: 2,
        maxCrossAxisExtent: 250,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 25.0,
      ),

    );
    throw UnimplementedError();
  }
}



class GridViewExtendDemo extends StatelessWidget {







  List<Widget> _buildItem(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.red,
        alignment: Alignment(0.0,0.0),
        child: Text(
          'item $index',
          style: TextStyle(fontSize: 24.0,color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 170.0,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 25.0,
      // scrollDirection: Axis.horizontal,
      children: _buildItem(100),
    );
    throw UnimplementedError();
  }
}



class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildItem(int length) {
    return List.generate(length, (index) {
      return Container(
        color: Colors.red,
        alignment: Alignment(0.0,0.0),
        child: Text(
          'item $length',
          style: TextStyle(fontSize: 24.0,color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 25.0,
      scrollDirection: Axis.horizontal,
      children: _buildItem(100),
    );
    throw UnimplementedError();
  }
}




class PageViewBuildeDemo extends StatelessWidget {

  Widget _pageItemBuilder(BuildContext context,int index) {
    return Stack(
      children: [
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                posts[index].title,
                style: TextStyle(fontWeight:FontWeight.bold,fontSize: 24.0,color: Colors.purple),
              ),
              Text(
                posts[index].author,
                style: TextStyle(fontWeight:FontWeight.bold,fontSize: 24.0,color: Colors.red),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
    throw UnimplementedError();
  }
}



class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      // pageSnapping: false,
      // reverse: true,
      // scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint('page $currentPage'),
      controller: PageController(
        initialPage: 1,
        keepPage: false,
        // viewportFraction: 0.85,
      ),
      children: [
        Container(
          color: Colors.brown,
          constraints: BoxConstraints(
            minWidth: 200,
            maxHeight: 300,
          ),

          alignment: Alignment(0.0,0.0),
          child: Text(
            "One11",
            style: TextStyle(fontSize: 24.0,color: Colors.yellow,backgroundColor: Colors.white),
          ),
        ),
        Container(
          color: Colors.purple,
          alignment: Alignment(0.0,0.0),
          child: Text(
            "TWO",
            style: TextStyle(fontSize: 24.0,color: Colors.yellow),
          ),
        ),
        Container(
          color: Colors.red,
          alignment: Alignment(0.0,0.0),
          child: Text(
            "THREE",
            style: TextStyle(fontSize: 24.0,color: Colors.yellow),
          ),
        ),
      ],
    );
    throw UnimplementedError();
  }
}