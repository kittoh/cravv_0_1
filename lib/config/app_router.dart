// ignore_for_file: avoid_print

import 'package:cravv_0_1/src/screens/authenticate/login_screen.dart';
import 'package:cravv_0_1/src/screens/authenticate/register_screen.dart';
import 'package:cravv_0_1/src/screens/basket/basket_screen.dart';
import 'package:cravv_0_1/src/screens/checkout/checkout_screen.dart';
import 'package:cravv_0_1/src/screens/cravv_chef_profile/cravv_chef_profile.dart';
import 'package:cravv_0_1/src/screens/location/location_screen.dart';
import 'package:cravv_0_1/src/screens/post_cravings/post_cravings.dart';
import 'package:cravv_0_1/src/screens/screens.dart';
import 'package:cravv_0_1/src/screens/voucher/voucher_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print("The Route is: ${settings.name}");

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case LoginScreen.routeName:
        return LoginScreen.route();
      case RegisterScreen.routeName:
        return RegisterScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case PostCravingsScreen.routeName:
        return PostCravingsScreen.route();
      case BasketScreen.routeName:
        return BasketScreen.route();
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();
      case CravvChefProfileScreen.routeName:
        return CravvChefProfileScreen.route();
      case VoucherScreen.routeName:
        return VoucherScreen.route();
        break;
      default:
        return _errorRoute();
    }
  }

  // ignore: dead_code
  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
      ),
      settings: RouteSettings(name: '/error'),
    );
  }
}
