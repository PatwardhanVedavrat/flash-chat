import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuccessfulScreen extends StatefulWidget {
  static const String id = 'chat_screen';
  @override
  _SuccessfulScreenState createState() => _SuccessfulScreenState();
}

class _SuccessfulScreenState extends State<SuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              }),
        ],
        title: Text('Free Education'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: Text(
          "Thanks for joining our community",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
