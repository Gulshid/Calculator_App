import 'package:calculator_app/Model_/CalculatorModel.dart';
import 'package:calculator_app/Utills/Routes/Routesname.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:math_expressions/math_expressions.dart';

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
  //terminate the splash screen provider this is end

  //Make for home screen
  var userInput = '';
  var Answer = '';

  //add the input
  void add_input(String input) {
    userInput += input;
    notifyListeners();
  }

  //clear input
  void clear_input() {
    userInput = '';
    Answer = '';
    notifyListeners();
  }

  //delete last input
  void delete_input() {
    if (userInput.isNotEmpty) {
      userInput = userInput.substring(0, userInput.length - 1);
      notifyListeners();
    }
  }

  //Calculate result
  void calculate_result() {
    String final_UserInput = userInput.replaceAll('x', '*');
    // ignore: deprecated_member_use
    Parser P = Parser();
    Expression exp = P.parse(final_UserInput);
    ContextModel Cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, Cm);
    Answer = eval.toString();
    save_Calculation(userInput, Answer);
    notifyListeners();
  }

  //svae the Calculation
  void save_Calculation(String userInput, String Answer) async {
    var box = await Hive.openBox<Calculatormodel>("Calculator");
    var calculation = Calculatormodel(UserInput: userInput, Answer: Answer);
    box.add(calculation);
  }
}
