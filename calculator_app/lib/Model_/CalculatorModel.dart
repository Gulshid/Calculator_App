import 'package:hive/hive.dart';
part 'CalculatorModel.g.dart';

@HiveType(typeId: 0)
class Calculatormodel extends HiveObject {
  @HiveField(0)
  String? UserInput;

  @HiveField(1)
  String? Answer;

Calculatormodel({required this.UserInput, required this.Answer});
}
