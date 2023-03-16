import 'dart:convert';
import 'dart:io';

void main() {
  claimThingNeed();
  // changeFormatResponce();
}

void newFile() {
  File file = File('dkmh.hcmuaf.edu.vn.har');
  String content = file.readAsStringSync();
  Map<String, dynamic> json = jsonDecode(content);

  List<dynamic> entries = json['log']['entries'];

  final data = {'data': entries};

  File file2 = File('api_cleaned.json');
  file2.writeAsStringSync(jsonEncode(data));
}

void saveKeyNeed() {
  File file = File('api_cleaned.json');
  String content = file.readAsStringSync();
  Map<String, dynamic> json = jsonDecode(content);

  List<dynamic> entries = json['data'];

  List<Map<String, dynamic>> keys = [];
  for (var entry in entries) {
    Map<String, dynamic> request = entry['request'];
    Map<String, dynamic> response = entry['response'];

    keys.add({
      'request': request,
      'response': response,
    });
  }

  File file2 = File('keys_need.json');
  file2.writeAsStringSync(jsonEncode({
    'data': keys,
  }));
  print(file2.path);
}

void claimThingNeed() {
  File file = File('keys_need.json');
  String content = file.readAsStringSync();

  Map<String, dynamic> json = jsonDecode(content);

  List<dynamic> entries = json['data'];

  final jsonFormated = entries.map((element) {
    Map<String, dynamic> request = element['request'];
    Map<String, dynamic> response = element['response'];

    Map<String, dynamic> value = {};

    Map<String, dynamic> formatHeader(List<dynamic> headers) {
      Map<String, dynamic> result = {};
      for (var header in headers) {
        result[header['name']] = header['value'];
      }
      return result;
    }

    value['request'] = {
      'method': request['method'],
      'url': request['url'],
      'headers': formatHeader(request['headers']),
    };

    value['response'] = response['content']['text'];

    return value;
  }).toList();

  File file2 = File('keys_need_formated.json');

  file2.writeAsStringSync(jsonEncode({
    'data': jsonFormated,
  }));
}

void changeFormatResponce() {
  File file = File('keys_need_formated.json');
  String content = file.readAsStringSync();

  Map<String, dynamic> json = jsonDecode(content);

  List<dynamic> entries = json['data'];

  String forrmate(String text) {
    // remove fist and last character
    text.substring(1, text.length - 1);
    text.replaceAll('\\"', '"');
    return text;
  }

  final jsonFormated = entries.map((element) {
    final text = element['response'] as String;
    element['response'] = jsonDecode(forrmate(text));
    return element;
  }).toList();
  print(jsonFormated[0]['response']);

  File file2 = File('keys_need_formated.json');
  file2.writeAsStringSync(jsonEncode({
    'data': jsonFormated,
  }));
}
