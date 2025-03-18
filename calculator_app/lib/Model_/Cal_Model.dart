import 'package:hive/hive.dart';
part 'Cal_Model.g.dart';

@HiveType(typeId: 0)
class CalModel extends HiveObject {
  @HiveField(0)
  String? UserInput;

  @HiveField(1)
  String? result;

  CalModel({required this.UserInput, required this.result});
}
