// import 'package:calculator_app/Utills/Routes/Routesname.dart';
import 'package:calculator_app/Utills/Routes/Routesname.dart';
import 'package:calculator_app/view_/Home_Screen.dart';
import 'package:calculator_app/view_/Splash.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routesname.splash:
        {
          return MaterialPageRoute(builder: (BuildContext context) => Splash());
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
                (BuildContext context) =>
                    Scaffold(body: Center(child: Text('No Route Found---->'))),
          );
        }
    }
  }
}
