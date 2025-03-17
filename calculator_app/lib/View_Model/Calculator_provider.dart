import 'package:calculator_app/Utills/Routes/Routesname.dart';
import 'package:flutter/widgets.dart';

class CalculatorProvider with ChangeNotifier {
  //Make for splash screen
  bool _loading = false;
  bool get loading => _loading;

  //set the loading
  void set_load(bool value) {
    _loading = value;
    notifyListeners();
  }

  void splash(BuildContext context) {
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, Routesname.home);
    });
  }

  void splash_load(BuildContext context) {
    set_load(true);
    splash(context);
    set_load(false);
  }
}
