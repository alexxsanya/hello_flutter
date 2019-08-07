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
        body: Container(
          margin: EdgeInsets.all(50.0),
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            gradient: LinearGradient(
              colors: [Colors.orange[50], Colors.orange[500]]
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
            image: DecorationImage(
              image: NetworkImage('http://bit.ly/flutter_tiger'),
            )
          ),
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