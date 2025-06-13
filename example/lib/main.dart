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
        backgroundColor: Colors.blueGrey.shade900,
        body: Center(
         LiquidGlassContainer(
  width: 300,
  height: 180,
  blur: 30,
  opacity: 0.15,
  borderRadius: BorderRadius.circular(25),
  borderColor: Colors.white.withOpacity(0.2),
  boxShadow: const BoxShadow(
    color: Colors.black26,
    blurRadius: 12,
    offset: Offset(0, 6),
  ),
  child: const Center(
    child: Text(
      "Liquid Glass 💧", 
      style: TextStyle(  
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,  
      ),
    ),
  ),
)

        ),
      ),
    );
  }
}
