import 'package:cravv_0_1/src/services/authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/home';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => HomeScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    final authenticationService = Provider.of<AuthenticationService>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Cravv'),
        backgroundColor: Colors.red,
        elevation: 0.0,
        actions: <Widget>[
          TextButton(
            child: Text("Logout"),
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
            onPressed: () async {
              await authenticationService.signOut();
            },
          )
        ],
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Location"),
          onPressed: () {
            Navigator.pushNamed(context, '/location');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        shape: CircularNotchedRectangle(),
        notchMargin: 2.5,
        // items: [
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.home),
        //     title: Text('Home'),
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.account_circle),
        //     title: Text('Profile'),
        //   ),
        // ],
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.chat,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
