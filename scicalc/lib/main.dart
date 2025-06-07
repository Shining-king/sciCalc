import 'package:flutter/material.dart';
import 'widgets/custom_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculatrice',
      home: Scaffold(
        body: Column(
          children: [
            const CustomAppBar(title: 'SciCalc'),
            const Expanded(child: Center(child: Text('Hello World!'))),
          ],
        ),
      ),
    );
  }
}
