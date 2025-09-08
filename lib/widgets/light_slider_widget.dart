import 'package:flutter/material.dart';

class LightSliderWidget extends StatefulWidget {
  const LightSliderWidget({super.key});

  @override
  _LightSliderWidgetState createState() => _LightSliderWidgetState();
}

class _LightSliderWidgetState extends State<LightSliderWidget> {
  double _brightness = 51.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Luz', style: TextStyle(fontSize: 16)),
        Slider(
          value: _brightness,
          min: 0,
          max: 100,
          divisions: 100,
          onChanged: (value) {
            setState(() {
              _brightness = value;
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('0'), Text('${_brightness.round()}'), Text('100')],
        ),
      ],
    );
  }
}
