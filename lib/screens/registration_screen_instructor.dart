import 'package:flash_chat/components/rounded_button.dart';
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/screens/received_screen.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RegistrationScreenInstructor extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenInstructorState createState() =>
      _RegistrationScreenInstructorState();
}

class _RegistrationScreenInstructorState
    extends State<RegistrationScreenInstructor> {
  bool spinning = false;
  String name;
  String education;
  String email;
  String whatToTeach;

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
                    kTextFieldDecoration.copyWith(hintText: 'Enter your name.'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  education = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your education.'),
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
                keyboardType: TextInputType.text,
                obscureText: true,
                onChanged: (value) {
                  whatToTeach = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter what you want to teach.'),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButtons(
                  color: Colors.blueAccent,
                  onPress: () async {
                    setState(() {
                      spinning = true;
                    });
                    /*try {
                      Map<String, dynamic> data = {
                        "Name": name,
                        "Education Details": education,
                        "Email": email,
                        "Subject": whatToTeach
                      };*/
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
