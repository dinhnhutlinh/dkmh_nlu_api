import 'package:dkmh_nlu_api/dkmh_nlu_api.dart';

final username = '';

final password = '';

Future<void> main(List<String> args) async {
  final dkmh = DkmhNLU(username: username, password: password);

  final studentInfo = await dkmh.getStudentInfo();

  print(studentInfo.toJson());
}
