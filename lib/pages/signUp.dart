import 'package:flutter/material.dart';
import 'package:traveler/widgets/sign_widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LoginImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                   Icon(Icons.travel_explore_outlined,
                    color: Colors.white,
                    size: 50,
                  ),
                  const Text("Create Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  buildEmail(),
                  buildPassword(),
                  buildPhoneNumber(),
                  buildSignUp(),
                  buildBack(),
                ],
              ),
          ),
        ),
      ],
    );
  }
}
