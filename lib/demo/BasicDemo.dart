import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    // return TextDemo();
    // return RichTextDemo();
    return ContainerDemo();

    throw UnimplementedError();
  }
}


class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // color: Colors.white,
      decoration: BoxDecoration(
        // 背景图片
        image: DecorationImage(
          // image: AssetImage(),// 本地图片
          image: NetworkImage('http://oos-cn.ctyunapi.cn/sizu/icon/gyzyd.png'),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeatY,// 图片是否重复
          fit: BoxFit.cover,
          // 图片的颜色滤镜
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.5),
            BlendMode.hardLight,
          ),

        ),
      ),


      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(Icons.pool,size: 64.0, color: Colors.purple),
            // color: Color.fromRGBO(3, 45, 67, 0.6),
            padding: EdgeInsets.only(left: 20.0),
            // margin: EdgeInsets.all(15.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 45, 67, 0.6),

              // 边框
              border: Border.all(
                color: Colors.indigoAccent,
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.indigoAccent,
              //     width: 3.0,
              //     style: BorderStyle.solid,
              //   ),
              // ),

              // 圆角
              // borderRadius: BorderRadius.circular(10.0),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(24.0),
              //   bottomLeft: Radius.circular(24.0),
              // ),

              // 阴影
              boxShadow: [
                BoxShadow(
                  offset: Offset(6.0, 8.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: 4.0,
                ),
              ],

              // 外形
              shape: BoxShape.circle,

              // 渐变效果
              // gradient: RadialGradient(
              //
              //
              // ),
              // gradient: LinearGradient(
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              //
              // ),


            ),
          )
        ],



      ),
    );
    throw UnimplementedError();
  }
}




class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText (
      text: TextSpan(
        text: 'nihao',
        style: TextStyle(
          color: Colors.deepOrangeAccent,
          fontSize: 44.0,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
        ),
        children: [
         TextSpan(
           text: '.net',
           style: TextStyle(
             color: Colors.deepOrangeAccent,
             fontSize: 24.0,
             fontWeight: FontWeight.w200,
             fontStyle: FontStyle.italic,
           ),
         )
        ],
      ),
    );
    throw UnimplementedError();
  }

}




class TextDemo extends StatelessWidget {
  final String _title = '苏州名城222';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '<$_title>信息港发展有限公司前身是创办于1997年的"苏州之窗网站";2000年开始该网站由当时的苏州有线电视台接管,即"名城苏州"...',
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 16.0,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
    throw UnimplementedError();
  }
}

