import 'package:base_flutter/pages/detail/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/widgets/search_text_field_widget.dart';
import 'package:base_flutter/constant/constant.dart';
import 'package:base_flutter/bean/subject_entity.dart';
import 'package:base_flutter/widgets/loading_widget.dart';
import 'package:base_flutter/http/http_request.dart';
import 'package:base_flutter/http/API.dart';
import 'package:base_flutter/widgets/image/radius_img.dart';

class GroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String hintText = '搜索书影音 小组 日记 用户等';
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            children: <Widget>[
              SearchTextFieldWidget(
                margin: EdgeInsets.all(Constant.MARGIN_RIGHT),
                hintText: hintText,
                onTab: () {
                  // Router.push(context, Router.searchPage, hintText);
                },
              ),
              Expanded(
                child: _GroupWidget(),
              )
            ],
          )),
    );
  }
}


class _GroupWidget extends StatefulWidget {
  @override
  __GroupWidgetState createState() => __GroupWidgetState();
}

var _request = HttpRequest(API.BASE_URL);

class __GroupWidgetState extends State<_GroupWidget> {
  List<Subject> list;
  bool loading = false;

  @override
  void initState() {
    super.initState();

    // Subject subject = new Subject();
    // subject.genres = '1';
    // subject.title = '明日定国';
    // subject.durations = '30';
    // subject.collect_count = '103';
    // subject.mainland_pubdate = 'tttt';
    // subject.has_video = true;
    // subject.original_title = '好看的';
    // subject.subtype = '1';
    // subject.directors = '200';
    // subject.year = '2010';
    // subject.alt = '456';
    // subject.id = '10000';
    // Rating rating = new Rating(20, 100);
    // subject.rating = rating;
    // Images images = new Images('http://oos-cn.ctyunapi.cn/sizu/icon/gyzyd.png', '', '');
    // subject.images = images;
    //
    // list.add(subject);


    // Future(() {
    //   return _request.get(API.TOP_250);
    // }).then((result) {
    //   var resultList = result['subjects'];
    //   setState(() {
    //     list =
    //         resultList.map<Subject>((item) => Subject.fromMap(item)).toList();
    //     loading = false;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return LoadingWidget.containerLoadingBody(_getBody(), loading: loading);
  }

  Widget _getBody() {
    // if (list == null) {
    //   return Container(
    //     child: Image.asset(Constant.ASSETS_IMG + 'ic_group_top.png'),
    //   );
    // }

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index){
        if(index == 0){
          return Image.asset(Constant.ASSETS_IMG + 'ic_group_top.png');
        }

        return Padding(

          padding: EdgeInsets.only(right: Constant.MARGIN_RIGHT,left: 6.0,top: 0.0),
          child: _getItem(index - 1),
        );
      },
      itemCount: 3,
    );
  }

  Widget _getItem(int index) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: Row(
        children: [
          RadiusImg.get('http://oos-cn.ctyunapi.cn/sizu/icon/gyzyd.png', 50.0, radius: 3.0),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('紧急的巨人',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
                  Text('890',style: TextStyle(fontSize: 13.0),)
                  // Text(bean.title,style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
                  // Text(bean.pubdates != null ? bean.pubdates[0] : '',style: TextStyle(fontSize: 13.0),)
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            // child: Text('${bean.collect_count}人',style: TextStyle(fontSize: 13.0),),
            child: Text('1300人',style: TextStyle(fontSize: 13.0),),
          ),
          GestureDetector(
            child: Image.asset(Constant.ASSETS_IMG + 'ic_group_checked_anonymous.png',width: 25.0,height: 25.0,),
            onTap: (){
              setState(() {
                print('build PersonCenterPage');
              });
            },
          )
        ],
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return new DetailPage();
        }));
      },
    );
  }
}
