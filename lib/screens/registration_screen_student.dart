import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import 'received_screen.dart';

class RegistrationScreenStudent extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _RegistrationScreenStudentState createState() =>
      _RegistrationScreenStudentState();
}

class _RegistrationScreenStudentState extends State<RegistrationScreenStudent> {
  bool spinning = false;
  String name;
  String schoolName;
  String email;
  String whatToLearn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: spinning,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.name,
                onChanged: (value) {
                  name = value;
                },
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Your Name'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your email.'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.name,
                onChanged: (value) {
                  schoolName = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your School Name.'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.name,
                onChanged: (value) {
                  whatToLearn = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Which tech you want to learn ?'),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButtons(
                  color: Colors.lightBlueAccent,
                  onPress: () async {
                    setState(() {
                      spinning = true;
                    });
                    /*try {
                      Map<String, dynamic> data = {
                        "Name": name,
                        "School Name": schoolName,
                        "Email": email,
                        "Subject": whatToLearn
                      };
                      students.add(data);*/
                    Navigator.pushNamed(context, SuccessfulScreen.id);
                    setState(() {
                      spinning = false;
                    });
                  },
                  /*catch (e) {
                      print(e);
                    }*/
                  buttonText: 'Register'),
            ],
          ),
        ),
      ),
    );
  }
}
