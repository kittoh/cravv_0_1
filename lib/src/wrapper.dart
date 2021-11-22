import 'package:cravv_0_1/src/models/customer.dart';
import 'package:cravv_0_1/src/screens/authenticate/authenticate.dart';
import 'package:cravv_0_1/src/screens/authenticate/login_screen.dart';
import 'package:cravv_0_1/src/screens/home/home_screen.dart';
import 'package:cravv_0_1/src/services/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  // const Wrapper({Key? key}) : super(key: key);
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => Wrapper(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    final authenticationService = Provider.of<AuthenticationService>(context);
    // final customer = Provider.of<Customer?>(context);

    return StreamBuilder<Customer?>(
      stream: authenticationService.customer,
      builder: (_, AsyncSnapshot<Customer?> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final Customer? customer = snapshot.data;
          return customer == null ? LoginScreen() : HomeScreen();
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
