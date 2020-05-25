import 'package:fitness_monkey/screens/sobriety_input.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('monkey1.wav');
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
              SizedBox(
                height: 25.0,
              ),
              RaisedButton(
                child: Text(
                  'Let the Revolution Begin',
                  style: TextStyle(
                    color: Colors.indigo.shade500,
                    fontSize: 18.0,
                    fontFamily: 'Source Sans Pro',
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SobrietyInput(),
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
