import 'package:flutter/material.dart';
import 'package:navigation_home/widgets/room_selector_widget.dart';
import 'package:navigation_home/widgets/connected_device_widget.dart';
import 'package:navigation_home/models/device.dart';
import 'package:navigation_home/screens/light_control_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _navigateToLightControl(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LightControlScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Device> devices = [
      Device(
        name: 'TV Cuarto',
        icon: Icons.tv,
        manufacturer: 'Samsung',
        model: 'QLED-55',
        mac: 'A1:B2:C3:D4:E5:F6',
        isLight: false,
      ),
      Device(
        name: 'Refrigeradora',
        icon: Icons.kitchen,
        manufacturer: 'Navicury',
        model: 'TP-KINT',
        mac: '30:40:FC:3D:F7:40',
        isLight: false,
      ),
      Device(
        name: 'Puerta Sala',
        icon: Icons.lock,
        manufacturer: 'SmartHome',
        model: 'SmartLock-300',
        mac: '1A:2B:3C:4D:5E:6F',
        isLight: false,
      ),
      Device(
        name: 'Cochera',
        icon: Icons.directions_car,
        manufacturer: 'LiftMasterHome',
        model: 'Door-8500W',
        mac: 'FF:EE:DD:CC:BB:AA',
        isLight: false,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Navicury', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue.shade800,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Espacios',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RoomSelectorWidget(
                  label: 'A',
                  onTap: () => _navigateToLightControl(context),
                ),
                RoomSelectorWidget(
                  label: 'B',
                  onTap: () => _navigateToLightControl(context),
                ),
                RoomSelectorWidget(
                  label: 'C',
                  onTap: () => _navigateToLightControl(context),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Equipos conectados',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 1.2,
              ),
              itemCount: devices.length,
              itemBuilder: (context, index) {
                return ConnectedDeviceWidget(device: devices[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
