import 'package:calculator_app/view_/calculator_ui.dart';
import 'package:flutter/material.dart';

class DesktopScafold extends StatelessWidget {
  const DesktopScafold({super.key});

  @override
  Widget build(BuildContext context) {
    // On desktop, we don't need flutter_screenutil, so we wrap with a builder
    // to remove the ScreenUtilInit context.
    return Scaffold(
      appBar: AppBar(title: const Text('Desktop')),
      body: Row(
        children: [
          // First column for history (placeholder for now)
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: const Center(child: Text('History (Future Feature)')),
            ),
          ),
          // Second column for the calculator
          Container(
            width: 400, // A fixed width for the calculator on desktop
            child: const CalculatorUI(),
          ),
        ],
      ),
    );
  }
}
