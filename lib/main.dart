import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
                CircleAvatar(
                  backgroundImage: AssetImage('images/fm_app_icon.png'),
                  radius: 50.0,
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
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 10.0,
                  ),
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
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 10.0,
                  ),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
