import 'package:astrolab/model/horoscope.dart';
import 'package:flutter/material.dart';

class CurrentHoroscope with ChangeNotifier {
  Horoscope value;
  CurrentHoroscope(this.value);

  void changeHoroscope(Horoscope newHoroscope) {
    if (value.name != newHoroscope.name) {
      value = newHoroscope;
      notifyListeners();
    }
  }
}
