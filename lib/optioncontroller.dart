import 'package:flutter/material.dart';

class Optioncontroller extends ChangeNotifier {
  int _selectedOption = -1;
  int get selectedOption => _selectedOption;

  void optionselect(int index) {
    _selectedOption = index;
    notifyListeners();
  }
}
