import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'inputstyle.dart';
import 'ResuableCard.dart';
const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

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
                Expanded(
                  child: ResuableCard(
                    activeCardColor,
                    Style(FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
                Expanded(
                    child: ResuableCard(activeCardColor,
                        Style(FontAwesomeIcons.venus, 'FEMALE'))),
              ],
            ),
          ),
          Expanded(
              child: ResuableCard(
            activeCardColor,
            Style(FontAwesomeIcons.venus, 'FEMALE'),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ResuableCard(activeCardColor,
                      Style(FontAwesomeIcons.venus, 'FEMALE'))),
              Expanded(
                  child: ResuableCard(activeCardColor,
                      Style(FontAwesomeIcons.venus, 'FEMALE'))),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}



