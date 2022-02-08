import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/container.dart';
import 'pages/rangeslider.dart';

class ChangingHeight extends ChangeNotifier{
  double get height => heightChange;

  double set UpdatedHeight(newValue) {
    _value = height;
    notifylisteners();
  }
}
