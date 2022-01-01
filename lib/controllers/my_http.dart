import 'package:http/http.dart' as http;

class MyHttp {
  String rootUrl = 'http://192.168.1.106:3333';

  Future<http.Response> post(String endpoint, Object? body) async {
    var url = Uri.parse('$rootUrl$endpoint');
    var response = await http.post(url, body: body);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return response;
  }

  Future<http.Response> put(String endpoint, Object? body) async {
    var url = Uri.parse('$rootUrl$endpoint');
    var response = await http.put(url, body: body);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return response;
  }

  Future<http.Response> delete(String endpoint, Object? body) async {
    var url = Uri.parse('$rootUrl$endpoint');
    var response = await http.delete(url, body: body);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return response;
  }

  Future<http.Response> get(String endpoint) async {
    var url = Uri.parse('$rootUrl$endpoint');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return response;
  }
}
