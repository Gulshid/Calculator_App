import 'package:flutter/material.dart';

class TabletScafold extends StatelessWidget {
  const TabletScafold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tablet'),
      ),
      body: const Center(
        child: Text('Tablet Layout'),
      ),
    );
  }
}