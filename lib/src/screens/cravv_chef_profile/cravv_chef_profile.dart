import 'package:flutter/material.dart';

class CravvChefProfileScreen extends StatelessWidget {
  static const String routeName = '/cravv-chef-profile';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => CravvChefProfileScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Location'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Home"),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
      ),
    );
  }
}
