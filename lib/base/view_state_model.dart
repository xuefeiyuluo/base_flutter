import 'package:flutter/material.dart';
import 'package:base_flutter/base/view_status.dart';

class ViewStateModel with ChangeNotifier {
  var _disposed = false;
  ViewStatus _viewState;

  ViewStateModel({ViewStatus viewState})
      : _viewState = viewState ?? ViewStatus.idle;

  ViewStatus get viewState => _viewState;

  set viewState(ViewStatus viewState) {
    _viewState = viewState;
    notifyListeners();
  }

  void setIdle() {
    viewState = ViewStatus.idle;
  }

  void setBusy() {
    viewState = ViewStatus.busy;
  }

  void setEmpty() {
    viewState = ViewStatus.empty;
  }

  bool get isBusy => viewState == ViewStatus.busy;

  bool get isIdle => viewState == ViewStatus.idle;

  bool get isEmpty => viewState == ViewStatus.empty;

  bool get isError => viewState == ViewStatus.error;

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }
}
