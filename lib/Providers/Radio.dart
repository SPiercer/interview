import 'package:flutter/material.dart';

class RadioProivder extends ChangeNotifier {
  List<bool> _isSelected = List.generate(3, (index) => false);
  int _index = 0;
  List<bool> get isSelected => _isSelected;
  int get index => _index;
  set index(int i) {
    _index = i;
    notifyListeners();
  }

  void toggle(int i) {
    _isSelected = List.generate(3, (index) => false);
    isSelected[i] = true;
    index = i;
    notifyListeners();
  }
}
