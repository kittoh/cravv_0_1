import 'package:cravv_0_1/src/models/customer.dart';
import 'package:cravv_0_1/src/screens/authenticate/authenticate_page.dart';
import 'package:cravv_0_1/src/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customer = Provider.of<Customer?>(context);
    print(customer);

    // return either Home or Authenticate widget
    // ignore: prefer_const_constructors
    return Authenticate();
  }
}
