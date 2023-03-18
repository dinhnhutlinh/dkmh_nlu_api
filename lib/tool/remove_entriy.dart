import 'dart:convert';
import 'dart:io';

void main(List<String> args) {}

List<String> listAPI() {
  File file = File('dkmh.hcmuaf.edu.vn.har');
  String content = file.readAsStringSync();
  Map<String, dynamic> json = jsonDecode(content);

  List<dynamic> entries = json['log']['entries'];

  List<dynamic> urls = entries
      .where((e) => e['request']['method'] == 'POST')
      .map((e) => e['request']['url'])
      .toList();
  urls.where((element) => element.contains('api')).toList();
  Set<String> set = Set.from(urls..sort((a, b) => a.compareTo(b)));

  set.forEach(print);
  return set.toList();
}
