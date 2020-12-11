import 'package:base_flutter/base/provider_widget.dart';
import 'package:base_flutter/config/application.dart';
import 'package:base_flutter/module/main/router/main_router.dart';
import 'package:base_flutter/module/user/router/nav_util.dart';
import 'package:base_flutter/module/user/router/user_router.dart';
import 'package:dio_log/dio_log.dart';
import 'package:flutter/material.dart';
import 'package:base_flutter/util/extension.dart';
import 'package:base_flutter/res/images.dart';
import 'package:base_flutter/module/splash/viewmodel/splash_model.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();

    afterLayout(() {
      if(Config.appFlavor == Flavor.TEST) {
        showDebugBtn(context);
      }
    });
    // 主界面
    afterLayout(() {
      doPreLogin(context, () {
        navigateTo(context, MainRouter.mainPage,replace: true);
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    // return Container();

    return ProviderWidget<SplashModel>(
      onModelReady: (model) {},
      builder: (context, model, child) {
        return Material(
          child: Image.asset(
            imageAssets('splash'),
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
        );
      },
    );
  }
}
