import 'package:flutter/material.dart';

class calcScreen extends StatelessWidget {
  const calcScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade700,
      appBar: AppBar(
        title: Text('SciCalc'),
        backgroundColor: Colors.yellow.shade700,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(14),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.yellow.shade100,
                borderRadius: BorderRadius.circular(50.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 100),
            ),
          ),
        ],
      ),
    );
  }
}
