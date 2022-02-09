import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';

import 'package:syncfusion_flutter_core/core.dart';

import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../services/changeheight.dart';
import '../main.dart';

import 'package:provider/provider.dart';

class SliderW extends StatefulWidget {
  @override
  _SliderWState createState() => _SliderWState();
}

class _SliderWState extends State<SliderW> {
  @override
  double value = 0;
  Widget build(BuildContext context) {
    ChangingHeight providerData = Provider.of<ChangingHeight>(context);
    print(providerData.heightChange);
    return SfSliderTheme(
      data: SfSliderThemeData(
        thumbColor: Colors.white,
        thumbRadius: 13,
        trackCornerRadius: 7,
        activeTrackColor: Color(0xff0A7AFF),
        inactiveTrackColor: Colors.grey,
      ),
      child: SfSlider(
        min: 0,
        max: 300.0,
        enableTooltip: true,
        value: providerData.heightChange,
        onChanged: (dynamic newValue) {
          setState(() {
            providerData.UpdatedHeight = newValue;
          });
        },
      ),
    );
  }
}
