import 'package:base_flutter/router/router_init.dart';
import 'package:fluro/fluro.dart';
import 'package:base_flutter/module/main/page/main_page.dart';

class MainRouter extends IRouterProvider {
  static String mainPage = '/main';
  
  @override
  void initRouter(FluroRouter router) {
    router.define(mainPage, handler: Handler(handlerFunc: (_,params){
      return MainPage();
    }));
  }
}
