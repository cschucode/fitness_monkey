import 'package:fitness_monkey/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fitness_monkey/screens/sobriety_display.dart';

class SobrietyInput extends StatefulWidget {
  @override
  _SobrietyInputState createState() => _SobrietyInputState();
}

class _SobrietyInputState extends State<SobrietyInput> {
  DateTime sobrietyDate = DateTime.now();

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
                'Select your sobriety date',
                style: kLabelTextStyle,
              ),
              SizedBox(
                height: 25.0,
              ),
              SizedBox(
                height: 150.0,
                child: CupertinoDatePicker(
                  backgroundColor: Colors.indigo.shade100,
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (DateTime date) {
                    setState(() {
                      sobrietyDate = date;
                    });
                    return date;
                  },
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              RaisedButton(
                child: Text('Enter'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SobrietyDisplay(
                          sobrietyDate: sobrietyDate,
                        ),
                      ));
                },
              ),
            ],
          )),
        ));
  }
}
