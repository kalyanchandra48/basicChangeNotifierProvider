import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';

import 'package:syncfusion_flutter_core/core.dart';

import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'services/changeheight.dart';

class SliderW extends StatefulWidget {
  @override
  _SliderWState createState() => _SliderWState();
}

class _SliderWState extends State<SliderW> {
  @override
  double _value = 50;
  Widget build(BuildContext context) {
    return SfSliderTheme(
      data: SfSliderThemeData(
        thumbColor: Colors.white,
        thumbRadius: 13,
        trackCornerRadius: 7,
        activeTrackColor: Color(0xff0A7AFF),
        inactiveTrackColor: Colors.grey,
      ),
      child: SfSlider(
        min: 50,
        max: 300.0,
        enableTooltip: false,
        value: _value,
        onChanged: (dynamic newValue) {
          setState(() {
            _value = newValue;
          });
        },
      ),
    );
  }
}
