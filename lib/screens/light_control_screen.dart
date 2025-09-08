import 'package:flutter/material.dart';
import 'package:navigation_home/widgets/light_slider_widget.dart';

class LightControlScreen extends StatelessWidget {
  const LightControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajustar', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade800,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            LightSliderWidget(),
            SizedBox(height: 20),
            LightSliderWidget(),
          ],
        ),
      ),
    );
  }
}
