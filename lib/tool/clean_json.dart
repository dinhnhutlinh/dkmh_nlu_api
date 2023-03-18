import 'dart:convert';
import 'dart:io';
import 'remove_entriy.dart' as r;

void main() {
  // claimThingNeed();
  // changeFormatResponce();
  // requestFile();
  cleanHarFile();
}

void cleanHarFile() {
  File file = File('dkmh.hcmuaf.edu.vn.har');

  String content = file.readAsStringSync();

  Map<String, dynamic> json = jsonDecode(content);

  List<dynamic> entries = json['log']['entries'];

  entries = entries.any((element) =>
          element['request']['url'].contains('api') &&
          element['request']['method'] == 'POST')
      ? entries
      : [];

  List<String> apiNeed = r.listAPI();

  entries = entries.where((element) {
    String url = element['request']['url'];
    return apiNeed.contains(url);
  }).toList();

  final data = {
    'data': entries.map((element) {
      Map<String, dynamic> request = element['request'];
      Map<String, dynamic> response = element['response'];
      String url = request['url'];
      String method = request['method'];
      List<dynamic>? headers = request['headers'];

      String? mineType = request['postData']?['mimeType'];

      List<dynamic>? params = request['postData']?['params'];

      Map<String, dynamic> formatHeader =
          headers == null ? {} : {for (var e in headers) e['name']: e['value']};

      Map<String, dynamic> formatParams =
          params == null ? {} : {for (var e in params) e['name']: e['value']};

      String body = request['postData']?['text'] ?? '{}';

      final bodyText = body.replaceAll('\\"', '"');

      var bodyJson = {};
      try {
        bodyJson = jsonDecode(bodyText);
        // ignore: empty_catches
      } catch (e) {}

      String responceText = response['content']['text'];

      // responceText = responceText.substring(1, responceText.length - 1);
      responceText = responceText.replaceAll('\\"', '"');

      var responseJson = {};
      try {
        responseJson = jsonDecode(responceText);
        // ignore: empty_catches
      } catch (e) {}

      return {
        'url': url,
        'method': method,
        'headers': formatHeader,
        'mineType': mineType,
        'body': bodyJson,
        'params': formatParams,
        'response': responseJson,
      };
    }).toList()
  };

  File file2 = File('api_cleaned.json');

  file2.writeAsStringSync(jsonEncode(data));
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

void requestFile() {
  File file = File('keys_need_formated.json');

  String content = file.readAsStringSync();

  Map<String, dynamic> json = jsonDecode(content);

  List<dynamic> entries = json['data'];

  final listRequest = entries.map((element) {
    final request = element['request'];

    return {
      'method': request['method'],
      'url': request['url'],
      'Content-Type': request['headers']['Content-Type'],
    };
  }).toList();

  File file2 = File('request.txt');

  for (var request in listRequest) {
    file2.writeAsStringSync(
        'METHOD: ${request['method']}\nURL: ${request['url']}\nContent-Type: ${request['Content-Type']}\n\n',
        mode: FileMode.append);
  }
}
