import 'package:fitness_monkey/constants.dart';
import 'package:flutter/material.dart';

class SobrietyDisplay extends StatelessWidget {
  SobrietyDisplay({this.sobrietyDate});

  final DateTime sobrietyDate;

  String calculateDaysSober(DateTime dateInput) {
    final sobrietyDate = dateInput;
    final now = DateTime.now();
    final days = now.difference(sobrietyDate).inDays;

    return days.toString();
  }

  @override
  Widget build(BuildContext context) {
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
                'Days Sober',
                style: kLabelTextStyle,
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                calculateDaysSober(sobrietyDate),
                style: kLabelNumberStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
