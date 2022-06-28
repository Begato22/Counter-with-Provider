import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier {
  var counter = 0;
  increase() {
    counter++;
    notifyListeners();
  }
}
