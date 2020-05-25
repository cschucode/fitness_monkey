import 'package:fitness_monkey/constants.dart';
import 'package:flutter/material.dart';

import 'package:fitness_monkey/cleantime_brain.dart';

class SobrietyDisplay extends StatelessWidget {
  SobrietyDisplay({this.sobrietyDate});

  final DateTime sobrietyDate;

  @override
  Widget build(BuildContext context) {
    var calculate = new CleanTimeBrain(dateInput: sobrietyDate);

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Years: ${calculate.getYearsSober()}',
                style: kLabelTextStyle,
              ),
              Text(
                'Months: ${calculate.getMonthsSober()}',
                style: kLabelTextStyle,
              ),
              Text(
                'Weeks: ${calculate.getWeeksSober()}',
                style: kLabelTextStyle,
              ),
              Text(
                'Days: ${calculate.getDaysSober()}',
                style: kLabelTextStyle,
              ),
              Text(
                'Hours: ${calculate.getHoursSober()}',
                style: kLabelTextStyle,
              ),
              Text(
                'Minutes: ${calculate.getMinutesSober()}',
                style: kLabelTextStyle,
              ),
              Text(
                'Seconds: ${calculate.getSecondsSober()}',
                style: kLabelTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
