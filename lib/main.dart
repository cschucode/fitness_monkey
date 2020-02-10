import 'dart:math';

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String motivationMessage = '';
  final monkeySlogans = [
    'Quit Monkeying Around!',
    'That\'s Bananas!',
    'Fitness Monkey Me!'
  ];

  final addictionSlogans = [
    'One Day at a Time!',
    'Do the Next Right Thing!',
    'Principles Before Personalities!'
  ];

  final fitnessSlogans = [
    'Buff Your Monkey!',
    'Get You Some!',
    'Time to Get Paid!',
  ];

  final communitySlogans = [
    'It Takes a Village!',
    'No One is an Island!',
    'Come Together!',
  ];

  void displayMessage(category) {
    setState(() {
      if (category == 'addiction') {
        motivationMessage = addictionSlogans[Random().nextInt(3)];
      } else if (category == 'fitness') {
        motivationMessage = fitnessSlogans[Random().nextInt(3)];
      } else if (category == 'community') {
        motivationMessage = communitySlogans[Random().nextInt(3)];
      } else if (category == 'monkey') {
        motivationMessage = monkeySlogans[Random().nextInt(3)];
      } else {
        motivationMessage = 'Error State';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo.shade100,
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
                FlatButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play('monkey.wav');
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/fm_app_icon.png'),
                    radius: 50.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Fitness Monkey',
                  style: TextStyle(
                    color: Colors.indigo.shade500,
                    fontSize: 36.0,
                    fontFamily: 'Bangers',
                  ),
                ),
                Text(
                  'Let the Revolution Begin',
                  style: TextStyle(
                    color: Colors.indigo.shade500,
                    fontSize: 18.0,
                    fontFamily: 'Source Sans Pro',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.indigo.shade900,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 10.0,
                  ),
                  child: FlatButton(
                    onPressed: () {
                      displayMessage('addiction');
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.local_hospital,
                        color: Colors.deepOrange.shade500,
                      ),
                      title: Text(
                        'Addiction Recovery',
                        style: TextStyle(
                          color: Colors.indigo.shade900,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 10.0,
                  ),
                  child: FlatButton(
                    onPressed: () {
                      displayMessage('fitness');
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.motorcycle,
                        color: Colors.deepOrange.shade500,
                      ),
                      title: Text(
                        'Physical Fitness',
                        style: TextStyle(
                          color: Colors.indigo.shade900,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 10.0,
                  ),
                  child: FlatButton(
                    onPressed: () {
                      displayMessage('community');
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.people,
                        color: Colors.deepOrange.shade500,
                      ),
                      title: Text(
                        'Community Support',
                        style: TextStyle(
                          color: Colors.indigo.shade900,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  motivationMessage,
                  style: TextStyle(
                    color: Colors.indigo.shade500,
                    fontSize: 30.0,
                    fontFamily: 'Bangers',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
