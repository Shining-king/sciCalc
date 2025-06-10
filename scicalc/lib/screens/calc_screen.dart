import 'package:flutter/material.dart';

class calcScreen extends StatefulWidget {
  const calcScreen({Key? key}) : super(key: key);

  @override
  State<calcScreen> createState() => _calcScreenState();
}

class _calcScreenState extends State<calcScreen> {
  Widget _button(String text, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: ElevatedButton(onPressed: onPressed, child: Text(text)),
      ),
    );
  }

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
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade100,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 100),
                ),
                Row(
                  children: [
                    _button('7', () {}),
                    _button('8', () {}),
                    _button('9', () {}),
                    _button('/', () {}),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
