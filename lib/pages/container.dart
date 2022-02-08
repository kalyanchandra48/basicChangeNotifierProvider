import 'package:flutter/material.dart';
import '../services/changeheight.dart';
import 'package:provider/provider.dart';


class ContainerWidget extends StatefulWidget {
  @override
  _ContainerWidgetState createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  double heightChange = 70;
  Widget build(BuildContext context) {
    return Consumer<ChangingHeight>(
      builder: (context, height, child) => Container(
        height: heightChange,
        width: 100,
        color: Colors.yellow,
      ),
    );
  }
}
