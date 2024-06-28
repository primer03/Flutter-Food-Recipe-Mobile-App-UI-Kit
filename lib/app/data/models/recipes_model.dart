import 'dart:convert';

Recipe recipeFromJson(String str) => Recipe.fromJson(json.decode(str));

String recipeToJson(Recipe data) => json.encode(data.toJson());

class Recipe {
  List<RecipeElement> recipes;

  Recipe({
    required this.recipes,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        recipes: List<RecipeElement>.from(
            json["recipes"].map((x) => RecipeElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "recipes": List<dynamic>.from(recipes.map((x) => x.toJson())),
      };
}

class RecipeElement {
  String recipeName;
  String instructions;
  List<String> ingredients;
  String fats;
  String carbs;
  String proteins;
  String kcal;
  String description;
  Category category;
  String ingredientsImage;
  User user;

  RecipeElement({
    required this.recipeName,
    required this.instructions,
    required this.ingredients,
    required this.fats,
    required this.carbs,
    required this.proteins,
    required this.kcal,
    required this.description,
    required this.category,
    required this.ingredientsImage,
    required this.user,
  });

  factory RecipeElement.fromJson(Map<String, dynamic> json) => RecipeElement(
        recipeName: json["recipeName"],
        instructions: json["instructions"],
        ingredients: List<String>.from(json["ingredients"].map((x) => x)),
        fats: json["fats"],
        carbs: json["carbs"],
        proteins: json["proteins"],
        kcal: json["Kcal"],
        description: json["description"],
        category: categoryValues.map[json["category"]]!,
        ingredientsImage: json["ingredientsImage"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "recipeName": recipeName,
        "instructions": instructions,
        "ingredients": List<dynamic>.from(ingredients.map((x) => x)),
        "fats": fats,
        "carbs": carbs,
        "proteins": proteins,
        "Kcal": kcal,
        "description": description,
        "category": categoryValues.reverse[category],
        "ingredientsImage": ingredientsImage,
        "user": user.toJson(),
      };
}

enum Category { BREAKFAST, DINNER, LUNCH }

final categoryValues = EnumValues({
  "Breakfast": Category.BREAKFAST,
  "Dinner": Category.DINNER,
  "Lunch": Category.LUNCH
});

class User {
  String username;
  String image;

  User({
    required this.username,
    required this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        username: json["username"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "image": image,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
