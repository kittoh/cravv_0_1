import 'package:cravv_0_1/src/screens/home/home_page.dart';
import 'package:cravv_0_1/src/services/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    final _authenticationService = Provider.of<AuthenticationService>(context);

    // text field state
    String email = '';
    String password = '';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Log in to Cravv'),
        backgroundColor: Colors.red[700],
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailController,
              onChanged: (value) {
                // setState(() {
                //   email = value;
                // });
              },
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
          ),
          ElevatedButton(
            child: Text('Login'),
            onPressed: () {
              _authenticationService.signInWithEmailAndPassword(
                emailController.text,
                passwordController.text,
              );
            },
          ),
          ElevatedButton(
            child: Text('Register'),
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
          ),
        ],
      ),
    );
  }
}
