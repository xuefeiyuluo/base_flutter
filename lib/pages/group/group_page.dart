import 'package:flutter/material.dart';
import 'package:base_flutter/widgets/search_text_field_widget.dart';
import 'package:base_flutter/constant/constant.dart';
import 'package:base_flutter/bean/subject_entity.dart';
import 'package:base_flutter/widgets/loading_widget.dart';

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

class __GroupWidgetState extends State<_GroupWidget> {
  List<Subject> list;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    // Future(() {
    //   return _request.get(API.IN_THEATERS);
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
    if (list == null) {
      return Container(
        child: Image.asset(Constant.ASSETS_IMG + 'ic_group_top.png'),
      );
    }
  }

}
