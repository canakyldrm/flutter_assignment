import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function _nextMessage;

  TextControl(this._nextMessage);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
        onPressed: _nextMessage,
        child: Text(
          'Next Message !',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
