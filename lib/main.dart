import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[900],
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[900],
          title: Center(
            child: Text(
              'Fitness Monkey',
              style: TextStyle(color: Colors.yellow[600]),
            ),
          ),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/fm_app_icon.png'),
          ),
        ),
      ),
    ));
