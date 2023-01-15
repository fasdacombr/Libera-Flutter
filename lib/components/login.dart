import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:libera/utils/constants.dart';

Future<bool> login(String email, String senha) async {
  String username = 'fasda';
  String password = 'brcd2605';
  String basicAuth =
      'Basic ${base64.encode(utf8.encode('$username:$password'))}';

  final msg = jsonEncode({'login': email, 'senha': senha});

  var response = await http.post(
    Uri.parse('${Constants.BASE_URL_USUARIO}login'),
    headers: <String, String>{
      'authorization': basicAuth,
      'Content-Type': 'application/json'
    },
    body: msg,
  );

  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}
