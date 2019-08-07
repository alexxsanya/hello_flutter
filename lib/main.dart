import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xff009688),
        accentColor: Colors.teal,
        textTheme: TextTheme(
          body1: TextStyle(
            fontSize: 24,
            fontStyle: FontStyle.italic
          )
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Layout',
            style: TextStyle(fontSize: 24),
          ),
        ),
        body: Center(
          child: Text('Hello World Flutter Layout'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.lightbulb_outline),
          onPressed: (){
            print('I am being pressed');
          },
        ),
        persistentFooterButtons: <Widget>[
          IconButton(
            icon: Icon(Icons.add_comment),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add_alarm),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add_location),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}