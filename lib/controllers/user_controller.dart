import 'dart:convert';

import 'package:buttonsexamples/controllers/my_http.dart';
import 'package:buttonsexamples/models/user.dart';
import 'package:http/http.dart';

class UserController {
  Future<dynamic> login(User user) async {
    try {
      Response result = await MyHttp().post("/login", user.toJson());
      String body = result.body;
      dynamic jsonObject = jsonDecode(body);
      if (result.statusCode == 200) {
        return jsonObject;
      } else {
        throw jsonObject["message"];
      }
    } catch (ex) {
      throw ex;
    }
  }
}
