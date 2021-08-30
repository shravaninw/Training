import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier{
  String title='Flutter Demo Home Page';
  int val=0;
  void increment() {
    val++;
    notifyListeners();
  }
  void clear(){
    val=0;
    notifyListeners();
  }
}