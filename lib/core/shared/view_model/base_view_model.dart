import 'package:flutter/widgets.dart';
import 'package:to_do/core/shared/enum/view_state_enum.dart';

abstract class BaseViewModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}
