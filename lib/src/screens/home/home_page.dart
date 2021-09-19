import 'package:cravv_0_1/src/services/authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authenticationService = Provider.of<AuthenticationService>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Cravv'),
        backgroundColor: Colors.red[700],
        elevation: 0.0,
        actions: [
          TextButton.icon(
            label: Text('Logout'),
            icon: Icon(Icons.logout_outlined),
            onPressed: () async {
              await authenticationService.signOut();
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text('Home Page'),
          Center(
              // child: ElevatedButton(
              //   child: Text('Logout'),
              //   onPressed: () async {
              //     await authenticationService.signOut();
              //   },
              // ),
              ),
        ],
      ),
    );
  }
}
