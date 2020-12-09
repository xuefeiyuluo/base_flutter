import 'package:flutter/material.dart';
import 'package:base_flutter/widgets/search_text_field_widget.dart';
import 'package:base_flutter/constant/constant.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
