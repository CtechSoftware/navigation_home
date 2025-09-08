import 'package:flutter/material.dart';

class FingerprintScannerWidget extends StatelessWidget {
  final VoidCallback onTap;

  const FingerprintScannerWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: const Icon(Icons.fingerprint, size: 100, color: Colors.white),
      ),
    );
  }
}
