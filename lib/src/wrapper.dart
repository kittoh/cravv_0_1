import 'package:cravv_0_1/src/screens/authenticate/authenticate.dart';
import 'package:cravv_0_1/src/screens/home/home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return either Home or Authenticate widget
    // ignore: prefer_const_constructors
    return Authenticate();
  }
}
