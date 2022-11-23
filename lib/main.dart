// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'text.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: true,
      home: MyHomePage(title: 'Flutter Assignment'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({@required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _myMessage = ['Beşiktaş', 'Real Madrid', 'Liverpool'];
  var _messageIndex = 0;

  void _nextMessage() {
    setState(() {
      _messageIndex++;
      if (_messageIndex >= _myMessage.length) {
        _messageIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: MyText(_myMessage[_messageIndex], _nextMessage),
      ),
    );
  }
}
