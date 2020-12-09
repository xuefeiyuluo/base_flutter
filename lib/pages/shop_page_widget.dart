import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


bool _closed = false;
bool _isShow = true;
///提供链接到一个唯一webview的单例实例，以便您可以从应用程序的任何位置控制webview
final _webviewReference = FlutterWebviewPlugin();


///市集 市集使用两个webView代替，因为豆瓣中 这个就是WebView
class ShopPageWidget extends StatelessWidget {

  void setShowState(bool isShow) {
    _isShow = isShow;
    if(!isShow){
      _closed = true;
      _webviewReference.hide();
      _webviewReference.close();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}