import 'package:flutter/material.dart';

import 'package:fitness_monkey/screens/home.dart';

void main() => runApp(FitnessMonkey());

class FitnessMonkey extends StatefulWidget {
  @override
  _FitnessMonkeyState createState() => _FitnessMonkeyState();
}

class _FitnessMonkeyState extends State<FitnessMonkey> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.indigo.shade100,
      ),
      home: HomePage(),
    );
  }
}
