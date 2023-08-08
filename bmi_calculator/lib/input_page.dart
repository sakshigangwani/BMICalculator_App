import 'package:flutter/material.dart';
class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: const Center(
        child: Text(
          'Body Text',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
