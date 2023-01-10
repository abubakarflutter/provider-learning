import 'package:flutter/foundation.dart';

class SwitchProvider with ChangeNotifier {
  bool _switchValue = false;

  bool get switchValue => _switchValue;

  void toggleSwitch(bool value) {
    _switchValue = value;
    notifyListeners();
  }
}