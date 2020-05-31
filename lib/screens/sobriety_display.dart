import 'package:fitness_monkey/cleantime_brain.dart';
import 'package:fitness_monkey/constants.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:fitness_monkey/cleantime_brain.dart';

class SobrietyDisplay extends StatefulWidget {
  final DateTime sobrietyDate;

  SobrietyDisplay({
    Key key,
    @required this.sobrietyDate,
  }) : super(key: key);

  @override
  _SobrietyDisplayState createState() => _SobrietyDisplayState();
}

class _SobrietyDisplayState extends State<SobrietyDisplay> {
  String seconds;
  @override
  Widget build(BuildContext context) {
    var calculate = new CleanTimeBrain(dateInput: widget.sobrietyDate);

    Timer.periodic(new Duration(seconds: 1), (timer) {
      setState(() {
        seconds = calculate.getSecondsSober();
      });
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade700,
        title: Text(
          'Fitness Monkey',
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have been sober for',
                style: kLabelTextStyle,
              ),
              Text(
                seconds ?? calculate.getSecondsSober(),
                style: kLabelNumberStyle,
              ),
              Text(
                'seconds',
                style: kLabelTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
