import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:prochef/models/response.dart';

class RecipeController extends GetxController {
  RxList<ResponseData> recipes = <ResponseData>[].obs;
  RxList<ResponseData> singleRecipe = <ResponseData>[].obs;
  RxList<String> favs = <String>[].obs;
  var isDone = false.obs;
  final TextEditingController inputController = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // getRecipes();
  }

  Future<void> getRecipes() async {
    try {
      recipes.clear();
      final search = inputController.text;
      const url = "https://api.edamam.com/api/recipes/v2?type=public";
      const apiKey = "272b5e0010b981664dd391c45a2c1a1e";
      const applicationId = "c4d9ed8b";
      // const headers="";
      // Map body={
      //   "q":food,

      // }

      final Uri uri =
          Uri.parse("$url&q=$search&app_key=$apiKey&app_id=$applicationId");

      // Await the http get response, then decode the json-formatted response.
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final Map<String, dynamic> results = jsonDecode(response.body);
        extractData(results);
        print('success');
        inputController.clear();
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
      //final response = await http.post(Uri.parse(url), body: jsonEncode({}));
    } catch (e) {
      print(e);
    }
    isDone.value = true;
    update();
  }

  List<Map>? extractData(Map rawData) {
    final List hits = rawData['hits'];

    List<ResponseData> extracted = [];
    for (Map hit in hits) {
      hit['recipe'];
      ResponseData recipe = ResponseData(
        image: hit['recipe']['image'],
        source: hit['recipe']['source'],
        ingredients: hit['recipe']['ingredientLines'],
        label: hit['recipe']['label'],
        link: hit['_links']['self']['href'],
      );
      extracted.add(recipe);
    }
    recipes.value = extracted;
    print(recipes.value[0].label);
  }

  void getOneRecipe(int index) {
    singleRecipe.clear();
    singleRecipe.value.add(recipes.value[index]);
  }

  void addToFavs(int index) {
    favs.value.add(recipes.value[index].link!);
    print(favs.value[0]);
  }
}
