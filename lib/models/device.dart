import 'package:flutter/material.dart';

class Device {
  final String name;
  final IconData icon;
  final String manufacturer;
  final String model;
  final String mac;
  final bool isLight;

  Device({
    required this.name,
    required this.icon,
    required this.manufacturer,
    required this.model,
    required this.mac,
    required this.isLight,
  });
}
