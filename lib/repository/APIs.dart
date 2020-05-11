import 'dart:convert';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutterexcercise/model/animeModel.dart';
import 'package:flutterexcercise/model/data.dart';
import 'package:http/http.dart' as http;

class APIs {
  //static const BASE_URL = "https://covid-19-coronavirus-statistics.p.rapidapi.com/v1";

  static const BASE_URL = "https://api.jikan.moe/v3/search/anime?q=one%20piece&limit=16";

  static Future<List<AnimeModel>> getSummary() async {

    print("Request api");
    var response = await http.get("$BASE_URL/stats");
    print("Finish request");
    print(response.statusCode);
    print(response.body);

    final List payload = json.decode(response.body)["results"];
    
    final data = payload.map((item) => AnimeModel(item["title"], item["overview"])).toList(growable: false);
    return data;
  }
}