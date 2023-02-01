import 'package:flutter/cupertino.dart';

class StateManager extends ChangeNotifier{
  int selectedIndex = 0;

  changeIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}