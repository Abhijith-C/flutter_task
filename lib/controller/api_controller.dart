import 'package:flutter_task/core/cloud_api.dart';
import 'package:flutter_task/model/drink_model.dart';
import 'package:get/get.dart';

class ApiController extends GetxController {
  List<DrinkModel>? drinksList;
  List<DrinkModel>? drinksListSorted;

  getDrinkDetails() async {
    drinksList = await CloudApi.getDrinkDetails();
    drinksListSorted = drinksList;
    print(drinksList!.length);
    update();
  }

  searchDrinks(String drinkName) {
    if (drinkName.isEmpty) {
      drinksListSorted = drinksList;
    }
    drinksListSorted = drinksList!
        .where((data) => data.strDrink!.toLowerCase().contains(drinkName))
        .toList();
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getDrinkDetails();
  }
}
