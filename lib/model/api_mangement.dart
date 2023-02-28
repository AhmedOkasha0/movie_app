import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movies_app/model/PopularResponse.dart';

class ApiManger {
  ///https://api.themoviedb.org/3/movie/popular?
  static const String baseUrl = 'api.themoviedb.org';
  static Future<PopularResponse> getPopular() async {
    var url = Uri.https(baseUrl, '/3/movie/popular', {
      'api_key' : '=3f0feda1306a4d38e9cfc9586b1e7055',
      'page' :'1',
      'language' :'en'
    });
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      var popularModel = PopularResponse.fromJson(json);
      return popularModel;
    } catch (e) {
      throw e;
    }
  }
}
//https://api.themoviedb.org/3/movie/popular?api_key=3f0feda1306a4d38e9cfc9586b1e7055&language=en-US&page=1
