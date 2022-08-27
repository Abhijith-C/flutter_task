class DrinkModel {
  String? idDrink;
  String? strDrink;

  String? strCategory;
  String? strAlcoholic;
  String? strGlass;
  String? strInstructions;
  String? strInstructionsDE;
  String? strInstructionsIT;

  String? strDrinkThumb;
  String? strIngredient1;
  String? strIngredient2;
  String? strIngredient3;
  String? strIngredient4;
  String? strIngredient5;

  String? strMeasure1;
  String? strMeasure2;
  String? strMeasure3;
  String? strMeasure4;
  String? strMeasure5;

  String? strCreativeCommonsConfirmed;
  String? dateModified;

  DrinkModel(
      {this.idDrink,
      this.strDrink,
      this.strCategory,
      this.strAlcoholic,
      this.strGlass,
      this.strInstructions,
      this.strInstructionsDE,
      this.strInstructionsIT,
      this.strDrinkThumb,
      this.strIngredient1,
      this.strIngredient2,
      this.strIngredient3,
      this.strIngredient4,
      this.strIngredient5,
      this.strMeasure1,
      this.strMeasure2,
      this.strMeasure3,
      this.strMeasure4,
      this.strMeasure5,
      this.strCreativeCommonsConfirmed,
      this.dateModified});

  DrinkModel.fromJson(Map<String, dynamic> json) {
    idDrink = json['idDrink'] ?? '';
    strDrink = json['strDrink'] ?? '';
    strCategory = json['strCategory'] ?? '';
    strAlcoholic = json['strAlcoholic'] ?? '';
    strGlass = json['strGlass'] ?? '';
    strInstructions = json['strInstructions'] ?? '';
    strInstructionsDE = json['strInstructionsDE'] ?? '';
    strInstructionsIT = json['strInstructionsIT'] ?? '';

    strDrinkThumb = json['strDrinkThumb'] ?? '';
    strIngredient1 = json['strIngredient1'] ?? '';
    strIngredient2 = json['strIngredient2'] ?? '';
    strIngredient3 = json['strIngredient3'] ?? '';
    strIngredient4 = json['strIngredient4'] ?? '';
    strIngredient5 = json['strIngredient5'] ?? '';

    strMeasure1 = json['strMeasure1'] ?? '';
    strMeasure2 = json['strMeasure2'] ?? '';
    strMeasure3 = json['strMeasure3'] ?? '';
    strMeasure4 = json['strMeasure4'] ?? '';
    strMeasure5 = json['strMeasure5'] ?? '';

    strCreativeCommonsConfirmed = json['strCreativeCommonsConfirmed'] ?? '';
    dateModified = json['dateModified'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['idDrink'] = idDrink;
    data['strDrink'] = strDrink;
    data['strCategory'] = strCategory;
    data['strAlcoholic'] = strAlcoholic;
    data['strGlass'] = strGlass;
    data['strInstructions'] = strInstructions;
    data['strInstructionsDE'] = strInstructionsDE;
    data['strInstructionsIT'] = strInstructionsIT;

    data['strDrinkThumb'] = strDrinkThumb;
    data['strIngredient1'] = strIngredient1;
    data['strIngredient2'] = strIngredient2;
    data['strIngredient3'] = strIngredient3;
    data['strIngredient4'] = strIngredient4;
    data['strIngredient5'] = strIngredient5;

    data['strMeasure1'] = strMeasure1;
    data['strMeasure2'] = strMeasure2;
    data['strMeasure3'] = strMeasure3;
    data['strMeasure4'] = strMeasure4;
    data['strMeasure5'] = strMeasure5;

    data['strCreativeCommonsConfirmed'] = strCreativeCommonsConfirmed;
    data['dateModified'] = dateModified;
    return data;
  }
}
