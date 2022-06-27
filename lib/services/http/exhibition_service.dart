import 'dart:convert';

import '../../configs/app_config.dart';
import 'package:http/http.dart' as http;

import 'constant/http_constant.dart';

Future<dynamic> getExhibitions() async {
  Uri getUrl = Uri.parse("$apiEndPoint/exhibitions");
  http.Response res = await http.get(getUrl);

  return res.statusCode == httpSuccessStatusCode ? jsonDecode(res.body) : null;
}
