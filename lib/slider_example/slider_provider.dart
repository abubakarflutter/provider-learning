import 'package:flutter/foundation.dart';

class SliderProvider with ChangeNotifier {

  double _sliderValue = 0.0;

  double get sliderValue => _sliderValue;

  void setSliderValue(double val) {
    _sliderValue = val;
    notifyListeners();
  }

}