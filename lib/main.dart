import 'package:flash_chat/screens/received_screen.dart';
import 'package:flash_chat/screens/registration_screen_instructor.dart';
import 'package:flash_chat/screens/registration_screen_student.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  return runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreenStudent.id: (context) => RegistrationScreenStudent(),
        RegistrationScreenInstructor.id: (context) =>
            RegistrationScreenInstructor(),
        SuccessfulScreen.id: (context) => SuccessfulScreen(),
      },
    );
  }
}
