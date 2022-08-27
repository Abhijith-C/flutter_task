import 'dart:convert';

import 'package:flutter_task/model/drink_model.dart';
import 'package:http/http.dart' as http;

class CloudApi {
  static Future<List<DrinkModel>> getDrinkDetails() async {
    var url = Uri.parse(
        'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=rum');
    final response = await http.get(url);
    final drinksListJson = jsonDecode(response.body);
    List<dynamic> drinksList = drinksListJson['drinks'];

    return drinksList.map((drinks) => DrinkModel.fromJson(drinks)).toList();
  }
}
