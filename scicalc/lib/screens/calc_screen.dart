import 'package:flutter/material.dart';

class CalcScreen extends StatefulWidget {
  const CalcScreen({Key? key}) : super(key: key);

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  Widget _button(String text, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
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
                Column(
                  children: [
                    Row(
                      children: [
                        _button('7', () {}),
                        _button('8', () {}),
                        _button('9', () {}),
                        _button('/', () {}),
                      ],
                    ),
                    Row(
                      children: [
                        _button('7', () {}),
                        _button('8', () {}),
                        _button('9', () {}),
                        _button('/', () {}),
                      ],
                    ),
                    Row(
                      children: [
                        _button('1', () {}),
                        _button('2', () {}),
                        _button('3', () {}),
                        _button('-', () {}),
                      ],
                    ),
                    Row(
                      children: [
                        _button('', () {}),
                        _button('0', () {}),
                        _button('', () {}),
                        _button('+', () {}),
                      ],
                    ),
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
