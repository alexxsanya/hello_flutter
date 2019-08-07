import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
            icon: Icon(Icons.mode_edit),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.delete_outline),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}