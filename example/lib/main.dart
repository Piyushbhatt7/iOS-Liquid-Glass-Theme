import 'package:flutter/material.dart';
import 'package:liquid_glass/liquid_glass.dart';
import 'package:liquid_glass/src/liquid_glass_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Liquid Glass Demo',
      home: Scaffold(
  backgroundColor: Colors.grey[900],
  body: Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LiquidGlassContainer(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Hello iOS 18!',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        const SizedBox(height: 20),
        LiquidButton(
          text: 'Press Me',
          icon: Icons.flash_on,
          onPressed: () {
            debugPrint("Button Pressed!");
          },
        ),
      ],
    ),
  ),
),

    );
  }
}
