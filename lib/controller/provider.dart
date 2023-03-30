import 'package:flutter/material.dart';
import 'package:weather_app/view/bottom_tabs/category_tab.dart';
import 'package:weather_app/view/bottom_tabs/home_tab.dart';

class Tabs extends ChangeNotifier {
  final List _tab = [const HomeTab(), const CategoryTab()];
  final List<bool> _toggle = [true, false];
  final List _elements = [];
  List get elemets => _elements;
  List<bool> get toggle => _toggle;
  Widget get tab => _tab[_index];
  int _index = 0;
  int get index => _index;
  void bottomtTab(index) {
    _index = index;
    notifyListeners();
  }

  void addToggle(index) {
    if (index == 0) {
      _toggle[0] = true;
      _toggle[1] = false;
    } else {
      _toggle[1] = true;
      _toggle[0] = false;
    }
    notifyListeners();
  }

  void addToList(String title, String amount, int toggle) {
    _elements.add([title, amount, toggle]);
    notifyListeners();
  }

  void removeFromList(int index) {
    _elements.removeAt(_elements.length-index-1);
    notifyListeners();
  }
}
