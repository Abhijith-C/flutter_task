import 'package:flutter/material.dart';
import 'package:flutter_task/model/drink_model.dart';

class DrinkCard extends StatelessWidget {
  DrinkModel drinkModel;
  DrinkCard({Key? key, required this.drinkModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Hero(
              tag: drinkModel,
              child: Image.network(
                drinkModel.strDrinkThumb!,
                width: 100,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  drinkModel.strDrink!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(drinkModel.strCategory!),
                Text(drinkModel.strAlcoholic!),
                Text(drinkModel.strCategory!)
              ],
            )
          ]),
        ),
      ),
    );
  }
}
