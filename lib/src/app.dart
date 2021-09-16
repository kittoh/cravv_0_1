import 'package:cravv_0_1/src/models/customer.dart';
import 'package:cravv_0_1/src/services/authentication_service.dart';
import 'package:cravv_0_1/src/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return StreamProvider<Customer?>.value(
      initialData: null,
      value: AuthService().customer,
      child: MaterialApp(
        home: const Wrapper(),
      ),
    );
  }
}
