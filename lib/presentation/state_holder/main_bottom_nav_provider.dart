import 'package:flutter/foundation.dart';

class MainBottomNavProvider extends ChangeNotifier{
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void changeIndex(int index){
    if (selectedIndex == index) {
      return;
    }
    _selectedIndex = index;
    notifyListeners();
  }
}