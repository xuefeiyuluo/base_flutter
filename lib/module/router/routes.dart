import 'package:base_flutter/module/user/router/user_router.dart';
import 'package:fluro/fluro.dart';
import 'package:base_flutter/router/router_init.dart';
import 'package:base_flutter/module/main/router/main_router.dart';
import 'package:base_flutter/module/order/router/order_router.dart';

class Routes {
  static List<IRouterProvider> _listRouter = [];

  static void configureRoutes(FluroRouter router) {
    _listRouter.clear();

    _listRouter.add(MainRouter());
    _listRouter.add(OrderRouter());
    _listRouter.add(UserRouter());

    /// 初始化路由
    _listRouter.forEach((routerProvider) {
      routerProvider.initRouter(router);
    });
  }

}