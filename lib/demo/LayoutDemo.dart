import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LayoutDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return Row(
    //   children: [
    //     IconBadge(Icons.pool)
    //   ],
    // );

    return Container(
      child: Column(
        // 固定尺寸
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          ),
        ],






        // // 主轴
        // mainAxisAlignment: MainAxisAlignment.center,
        // // 交叉轴
        // // crossAxisAlignment: CrossAxisAlignment.end,
        // children: [
        //   IconBadge(Icons.pool),
        //   IconBadge(Icons.bike_scooter,size: 64.0,),
        //   IconBadge(Icons.circle),
        // ],
      ),
    );

    throw UnimplementedError();
  }
}


class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 15 / 9,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
    throw UnimplementedError();
  }
}



class StackDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        SizedBox(
          width: 200.0,
          height: 300.0,
          child: Container(
            alignment: Alignment(0.0,0.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 248, 255, 1.0),
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Icon(Icons.pool,size: 32,color: Colors.yellow),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 248, 255, 1.0),
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Icon(Icons.bike_scooter,size: 32,color: Colors.yellow),
          ),
        ),
      ],
    );
    throw UnimplementedError();
  }
}





class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon,{
    this.size = 32.0,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon,size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );



    throw UnimplementedError();
  }
}
