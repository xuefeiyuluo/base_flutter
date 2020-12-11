import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:base_flutter/module/router/routes.dart';
import 'package:base_flutter/config/application.dart';
import 'package:oktoast/oktoast.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:base_flutter/module/splash/page/splash_page.dart';
import 'package:base_flutter/module/locator/locator.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // 依赖注入
  await setupLocator();
  runApp(MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
class MyApp extends StatelessWidget {
  MyApp(){
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
    // 下拉刷新的组件

  }


  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp(
        title: '',
        navigatorKey: navigatorKey,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('zh','CH'),
        ],
        theme: ThemeData(
          brightness: Brightness.light,
          cupertinoOverrideTheme: CupertinoThemeData(
            brightness: Brightness.light,
          ),
            buttonTheme: ButtonThemeData(
              minWidth: 40,
              height: 20,
              padding: EdgeInsets.all(0.0),
            )
        ),
        onGenerateRoute: Application.router.generator,
        navigatorObservers: [routeObserver],
        home: SplashPage(),
      ),
    );
  }
}

