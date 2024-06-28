// lib/app/data/providers/recipe_provider.dart
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:foodrecipe/app/data/models/recipes_model.dart';
import 'package:get/get.dart';

class RecipeProvider extends GetxService {
  Future<List<Recipe>> loadRecipes() async {
    final String response =
        await rootBundle.loadString('assets/json/recipes.json');
    final data = await json.decode(response) as List;
    return data.map((json) => Recipe.fromJson(json)).toList();
  }
}
