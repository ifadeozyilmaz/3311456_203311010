import 'package:flutter/material.dart';
import 'package:traveler/pages/home.dart';
import 'package:traveler/pages/login.dart';
import 'package:traveler/pages/signUp.dart';

class buildEmail extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "Email",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white60,
          ),
          height: 60,
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.teal,
            ),
          ),
        )
      ],
    );
  }
}

class buildPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "Password",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white60,
          ),
          height: 60,
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            obscureText: true,
            style: TextStyle(
              color: Colors.teal,
            ),
          ),
        ),
      ],
    );
  }
}

class buildLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const HomePage()));
        },
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.red[200],
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ));
  }
}

class buildRegister extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don\'t have an account?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpPage()));
          },
          child: Text('Register',
              style: TextStyle(
                  color: Colors.red[200],
                  fontWeight: FontWeight.w500
              )
          ),
        )
      ],
    );
  }
}

class buildPhoneNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "Phone Number",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white60,
          ),
          height: 60,
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            keyboardType: TextInputType.phone,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }
}

class buildSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
    },
      height: 45,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text("Sign Up",
        style: TextStyle(
          color: Colors.red[200],
          fontSize: 20,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}

class buildBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
      },
      height: 30,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: Icon(
        Icons.arrow_back,
        color: Colors.red[200],
      ),
    );
  }
}

class LoginImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/images2.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

