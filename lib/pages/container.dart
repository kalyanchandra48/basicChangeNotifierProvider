import 'package:flutter/material.dart';
import '../services/changeheight.dart';
import 'package:provider/provider.dart';

class ContainerWidget extends StatelessWidget {
  @override
  double heightChange = 70;
  Widget build(BuildContext context) {
    return Consumer<ChangingHeight>(
      builder: (context, data, child) => Container(
        height: data.heightChange,
        width: 100,
        color: Colors.yellow,
      ),
    );
  }
}
