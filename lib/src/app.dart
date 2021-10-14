import 'package:cravv_0_1/src/screens/authenticate/login_screen.dart';
import 'package:cravv_0_1/src/screens/authenticate/register_screen.dart';
import 'package:cravv_0_1/src/screens/home/home_screen.dart';
import 'package:cravv_0_1/src/services/authentication_service.dart';
import 'package:cravv_0_1/src/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/customer.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(),
        ),
      ],
      child: MaterialApp(
        title: 'Test App',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => Wrapper(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
          '/home': (context) => HomeScreen(),
        },
      ),
    );
  }
}
