import 'dart:convert';

import '../model/time.dart';
import 'package:http/http.dart' as http;

class TimeApi {
  Future<Time> getTime() async {
    final response = await http
        .get(Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Seoul'));
    return Time.fromJson(jsonDecode(response.body));
  }
}
