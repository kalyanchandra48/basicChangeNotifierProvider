import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../pages/container.dart';
import '../pages/rangeslider.dart';

class ChangingHeight extends ChangeNotifier{
	double heightChange = 70;
  double get height => heightChange;

  set UpdatedHeight(value) {
    heightChange = value;
    notifyListeners();
  }
}
