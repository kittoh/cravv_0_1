import 'package:cravv_0_1/src/services/authentication.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        elevation: 0.0,
        title: Text('Sign-in to Cravv'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(
          child: Text('Sign-in'),
          style: ElevatedButton.styleFrom(
            primary: Colors.red[900],
            padding: EdgeInsets.all(10.0),
          ),
          onPressed: () async {
            dynamic result = await _auth.signInAnonymously();
            if (result == null) {
              print('Error signing in');
            } else {
              print('Signed in');
              print(result.uid);
            }
          },
        ),
      ),
    );
  }
}
