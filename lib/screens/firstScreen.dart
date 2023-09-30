import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochef/controllers/recipeController.dart';
import 'package:prochef/reusables/recipeList.dart';
import 'package:prochef/screens/RecipesScreen.dart';
import 'package:prochef/screens/profile.dart';
import 'package:prochef/screens/shimmer.dart';
import 'package:prochef/screens/specificCategory.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final RecipeController recipeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: recipeController.getRecipes(),
        builder: (context, snapshot) {
          if (recipeController.isDone.value) {
            return RecipesScreen();
          } else {
            return ShimmerScreen(); // Center(child: CircularProgressIndicator());
          }
        });

    // isLoading //&& recipeController.recipes.isNotEmpty
    //     ? ShimmerScreen()
    //     : RecipesScreen();
  }
}
