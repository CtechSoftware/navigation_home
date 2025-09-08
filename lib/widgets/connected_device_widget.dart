import 'package:flutter/material.dart';
import 'package:navigation_home/models/device.dart';

class ConnectedDeviceWidget extends StatelessWidget {
  final Device device;

  const ConnectedDeviceWidget({super.key, required this.device});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/device_details', arguments: device);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(device.icon, size: 40, color: Colors.blue),
            const SizedBox(height: 10),
            Text(
              device.name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
