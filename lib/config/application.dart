import 'package:fluro/fluro.dart';

class Application {
  static FluroRouter router;
}

enum Flavor {
  TEST,
  RELEASE,
}

class Config {
  static Flavor appFlavor;

  static String get flavor {
    switch (appFlavor) {
      case Flavor.TEST:
        return 'TEST';
      case Flavor.RELEASE:
        return 'RELEASE';
      default:
        return 'RELEASE';
    }
  }
}



