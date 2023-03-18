import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  File file = File('api_cleaned.json');
  String content = file.readAsStringSync();
  Map<String, dynamic> json = jsonDecode(content);

  List<dynamic> entries = json['data'];

  List<Map<String, dynamic>> models = [];
  for (var entry in entries) {
    models.add({entry['url']: entry['response']});
  }

  File file2 = File('models.json');
  file2.writeAsStringSync(jsonEncode({
    'data': models,
  }));
}
