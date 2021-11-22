import 'package:flutter/material.dart';

class PostCravingsScreen extends StatelessWidget {
  static const String routeName = '/post-cravings';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => PostCravingsScreen(),
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
