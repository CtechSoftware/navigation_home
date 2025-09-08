import 'package:flutter/material.dart';
import 'package:navigation_home/models/device.dart';
import 'package:navigation_home/widgets/light_slider_widget.dart';

class DeviceDetailsScreen extends StatefulWidget {
  const DeviceDetailsScreen({super.key});

  @override
  _DeviceDetailsScreenState createState() => _DeviceDetailsScreenState();
}

class _DeviceDetailsScreenState extends State<DeviceDetailsScreen> {
  bool _isTurnedOn = false;

  void _togglePower() {
    setState(() {
      _isTurnedOn = !_isTurnedOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    final device = ModalRoute.of(context)!.settings.arguments as Device;

    return Scaffold(
      appBar: AppBar(
        title: Text(device.name, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade800,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fabricante: ${device.manufacturer}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Modelo: ${device.model}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text('MAC: ${device.mac}', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            if (device.isLight) ...[
              const LightSliderWidget(),
              const SizedBox(height: 20),
            ],
            Center(
              child: ElevatedButton(
                onPressed: _togglePower,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),
                  backgroundColor: _isTurnedOn ? Colors.red : Colors.green,
                ),
                child: Text(
                  _isTurnedOn ? 'Apagar' : 'Encender',
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
