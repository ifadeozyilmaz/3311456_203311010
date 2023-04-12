import 'package:flutter/material.dart';
import 'package:traveler/widgets/sign_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LoginImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 40,),
                  buildEmail(),
                  const SizedBox(height: 20,),
                  buildPassword(),
                  const SizedBox(height: 40,),
                  buildLogin(),
                  const SizedBox(height: 20,),
                  buildRegister(),
                ],
          ),
          ),
        )
      ],
    );
  }
}
