import 'package:flutter/widgets.dart';

extension StringExtension on String {
  bool isNotNullAndEmpty() {
    if (this != null && this.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  bool isNullOrEmpty() {
    if (this == null || this.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }

  String obscurePhone() {
    if (this == null || this.isEmpty || this.length != 11) {
      return this;
    }
    return this.replaceRange(3, 7, "****");
  }

  String obscureIdNo() {
    if (this == null || this.isEmpty || this.length != 18) {
      return this;
    }
    return this.replaceRange(3, 14, "***********");
  }

  bool isCorrectPhone(){
    if (this == null || this.isEmpty || this.length != 11 ||  !this.startsWith(RegExp('1[3-9]'))) {
      return false;
    }
    return true;
  }

  bool isCorrectPsw(){
    if (this == null || this.isEmpty || this.length<6 ) {
      return false;
    }
    return true;
  }

  bool isInRange(int min, int max) {
    try {
      if (this.isNullOrEmpty()) {
        return false;
      }
      return double.parse(this) >= min && double.parse(this) <= max;
    } catch (e) {
      return false;
    }
  }

  bool isLittleThan(int max) {
    try {
      if (this.isNullOrEmpty()) {
        return true;
      }
      return  double.parse(this) <= max;
    } catch (e) {
      return false;
    }
  }

  String trimNull() {
    if (this == null || this.isEmpty || this == 'null') {
      return "";
    } else {
      return this;
    }
  }
}

extension DoubleExtension on double {
  String formatNum({int fractionDigits=2}) {
    String dStr = this.toString();
    if ((dStr.length - dStr.lastIndexOf(".") - 1) < fractionDigits) {
      return this
          .toStringAsFixed(fractionDigits)
          .substring(0, dStr.lastIndexOf(".") + fractionDigits + 1)
          .toString();
    } else {
      return this
          .toString()
          .substring(0, dStr.lastIndexOf(".") + fractionDigits + 1)
          .toString();
    }
  }
}

extension ObjectExtension on Object {
  bool isNotNull() {
    if (this != null) {
      return true;
    } else {
      return false;
    }
  }
}

extension ListExtension<T> on List<T> {
  bool isNotNullAndEmpty() {
    if (this != null && this.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  bool isNullOrEmpty() {
    if (this == null || this.isEmpty) {
      return true;
    } else {
      return false;
    }
  }
}

afterLayout(VoidCallback callback) {
  WidgetsBinding.instance.addPostFrameCallback((Duration timeStamp) {
    callback();
  });
}
