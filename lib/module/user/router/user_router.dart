import 'package:base_flutter/module/user/page/phone_login_page.dart';
import 'package:base_flutter/module/user/repository/user_info.dart';
import 'package:base_flutter/module/user/router/nav_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:base_flutter/router/router_init.dart';
import 'package:fluro/fluro.dart';

class UserRouter extends IRouterProvider {

  static String phoneLoginPage = '/login/phoneLogin';

  @override
  void initRouter(FluroRouter router) {
    // TODO: implement initRouter

    router.define(phoneLoginPage,
        handler: Handler(handlerFunc: (_, params) => PhoneLoginPage()));
  }


}


void doPreLogin(BuildContext context, VoidCallback callback) async {
  if(UserInfo.isLogin()) {
    callback();
  } else {
    var isLoginSuccess = await navigateTo(context, UserRouter.phoneLoginPage);
    if(isLoginSuccess != null && isLoginSuccess) {
      callback();
    }
  }
}

