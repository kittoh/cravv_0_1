import 'package:cravv_0_1/src/screens/authenticate/log_in_page.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Center(
      child: LogInPage(),
    );
  }
}
