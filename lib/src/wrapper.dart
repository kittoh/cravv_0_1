import 'package:cravv_0_1/src/models/customer.dart';
import 'package:cravv_0_1/src/screens/authenticate/authenticate.dart';
import 'package:cravv_0_1/src/screens/authenticate/log_in_page.dart';
import 'package:cravv_0_1/src/screens/home/home_page.dart';
import 'package:cravv_0_1/src/services/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authenticationService = Provider.of<AuthenticationService>(context);
    // final customer = Provider.of<Customer?>(context);

    return StreamBuilder<Customer?>(
      stream: authenticationService.customer,
      builder: (_, AsyncSnapshot<Customer?> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final Customer? customer = snapshot.data;
          return customer == null ? LogInPage() : HomePage();
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
