import 'package:calculator_app/Model_/Cal_Model.dart';
import 'package:calculator_app/Utills/Routes/Routesname.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:math_expressions/math_expressions.dart';

class CalProvider with ChangeNotifier {
  //Make Provider for Splash Screen
  bool _loading = false;
  bool get loading => _loading;

  //set the load
  void set_loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  //splash delayed
  void splash(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routesname.home);
    });
  }

  //set the loading...
  void splash_load(BuildContext context) {
    set_loading(true);
    splash(context);
    set_loading(false);
  }

  //end of Splash Screen provider

  //Make Provider for home Screen
  var userInput = '';
  var answer = '';

  //function for add_input
  void add_Input(String input) {
    userInput += input;
    notifyListeners();
  }

  //function for delete_input
  void delete_Input() {
    if (userInput.isNotEmpty) {
      userInput = userInput.substring(0, userInput.length - 1);
      notifyListeners();
    }
  }

  //function for clear the user input area
  void clear_Input() {
    userInput = '';
    answer = '';
    notifyListeners();
  }

  //function for calculate all the user_input
  void calculate_Input() {
    String final_User_input = userInput.replaceAll('x', '*');
    // ignore: deprecated_member_use
    Parser p = Parser();
    Expression exp = p.parse(final_User_input);
    ContextModel CM = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, CM);
    answer = eval.toString();
    save_calculation(userInput, answer);
    notifyListeners();
  }

  //function for save the calculation in database
  void save_calculation(String userinput, String answer) async {
    var box = await Hive.openBox<CalModel>('Calculator');
    var calculation = CalModel(UserInput: userinput, result: answer);
    box.add(calculation);
    notifyListeners();
  }
}
