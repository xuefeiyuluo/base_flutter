import 'package:base_flutter/config/application.dart';
import 'package:base_flutter/module/user/repository/user_info.dart';
import 'package:base_flutter/module/user/router/user_router.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';


Future navigateTo(BuildContext context, String path,{bool replace = false,bool needLogin = false}) {
  if(needLogin && !UserInfo.isLogin()){
    navigateTo(context, UserRouter.phoneLoginPage);
    return Future.value(false);
  }
  FocusScope.of(context).unfocus();
  return Application.router.navigateTo(context, path,transition: TransitionType.cupertino,replace: replace);
}
