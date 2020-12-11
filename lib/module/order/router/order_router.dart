import 'package:base_flutter/router/router_init.dart';
import 'package:fluro/fluro.dart';
import 'package:base_flutter/module/order/page/order_detail_page.dart';
import 'package:base_flutter/module/order/page/search_order_page.dart';

class OrderRouter extends IRouterProvider {
  static String orderDetailPage = '/order/orderDetail';
  static String searchOrderPage = '/order/searchOrder';
  
  @override
  void initRouter(FluroRouter router) {
    router.define(orderDetailPage, handler: Handler(handlerFunc: (_,params){
      return OrderDetailPage();
    }));

    router.define(searchOrderPage, handler: Handler(handlerFunc: (_,params){
      return SearchOrderPage();
    }));

  }
}
