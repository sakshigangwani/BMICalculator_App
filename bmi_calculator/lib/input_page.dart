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
        title: const Center(child: Text('BMI Calculator')),
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: ResuableCard(Color(0xFF1D1E33))),
                Expanded(child: ResuableCard(Color(0xFF1D1E33))),
              ],
            ),
          ),
          Expanded(child: ResuableCard(Color(0xFF1D1E33))),
          Expanded(
              child: Row(
            children: [
              Expanded(child: ResuableCard(Color(0xFF1D1E33))),
              Expanded(child: ResuableCard(Color(0xFF1D1E33))),
            ],
          ))
        ],
      ),
    );
  }
}

class ResuableCard extends StatelessWidget {
  ResuableCard(this.colour);
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
      margin: const EdgeInsets.all(15.0),
    );
  }
}
