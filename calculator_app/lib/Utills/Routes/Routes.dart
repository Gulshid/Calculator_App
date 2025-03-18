import 'package:calculator_app/Utills/Routes/Routesname.dart';
import 'package:calculator_app/view_/Home_Screen.dart';
import 'package:calculator_app/view_/Splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static Route<dynamic> generate_Route(RouteSettings set) {
    switch (set.name) {
      case Routesname.splash:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => SplashScreen(),
          );
        }

      case Routesname.home:
        {
          return MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen(),
          );
        }

      default:
        {
          return MaterialPageRoute(
            builder:
                (_) => Scaffold(
                  body: Center(child: Text('No Route is Found----->')),
                ),
          );
        }
    }
  }
}
