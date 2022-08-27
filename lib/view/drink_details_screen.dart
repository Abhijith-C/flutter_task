import 'package:flutter/material.dart';
import 'package:flutter_task/core/constans.dart';
import 'package:flutter_task/model/drink_model.dart';
import 'package:sizer/sizer.dart';

class DrinkDetailsScreen extends StatelessWidget {
  DrinkModel drinkModel;
  DrinkDetailsScreen({Key? key, required this.drinkModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(drinkModel.strDrink!),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Hero(
                    tag: drinkModel,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.network(
                        drinkModel.strDrinkThumb!,
                        height: 40.h,
                      ),
                    )),
                kHeight,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              drinkModel.strDrink!,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(drinkModel.strCategory!),
                            Text(drinkModel.strAlcoholic!),
                            Text(drinkModel.strGlass!),
                          ],
                        ),
                      ),
                    ),
                    kHeight,
                    Card(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Instructioins',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(drinkModel.strInstructions!),
                          ],
                        ),
                      ),
                    ),
                    kHeight,
                    Card(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Ingredients',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(drinkModel.strIngredient1!),
                            Text(drinkModel.strIngredient2!),
                            Text(drinkModel.strIngredient3!),
                            Text(drinkModel.strIngredient4!),
                            Text(drinkModel.strIngredient5!),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
