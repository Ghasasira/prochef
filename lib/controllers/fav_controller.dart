import 'dart:convert';

import 'package:get/get.dart';
import 'package:prochef/controllers/recipeController.dart';
import 'package:http/http.dart' as http;
import 'package:prochef/models/response.dart';

class FavController extends GetxController {
  RecipeController recipeController = Get.put(RecipeController());
  RxBool isDone = false.obs;
  RxList<ResponseData> favsList = <ResponseData>[].obs;
  RxList<ResponseData> singleRecipe = <ResponseData>[].obs;

  @override
  void onInit() {
    fetchFavs();
    // TODO: implement onInit
    super.onInit();
  }

  void fetchFavs() async {
    try {
      // const url = "https://api.edamam.com/api/recipes/v2?type=public";
      // const apiKey = "272b5e0010b981664dd391c45a2c1a1e";
      // const applicationId = "c4d9ed8b";
      // const headers="";
      // Map body={
      //   "q":food,

      // }

      final Uri uri = Uri.parse(recipeController.favs.value[0]);
      //Uri.parse("$url&q=$search&app_key=$apiKey&app_id=$applicationId");

      // Await the http get response, then decode the json-formatted response.
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final Map<String, dynamic> results = jsonDecode(response.body);
        extractData(results);
        print('success');
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
    final Map recipe = rawData['recipe'];
    ResponseData favRecipe = ResponseData(
      image: recipe['image'],
      source: recipe['source'],
      ingredients: recipe['ingredientLines'],
      label: recipe['label'],
    );

    // for (Map hit in ) {
    //   hit['recipe'];
    //   ResponseData recipe = ResponseData(
    //     image: hit['recipe']['image'],
    //     source: hit['recipe']['source'],
    //     ingredients: hit['recipe']['ingredientLines'],
    //     label: hit['recipe']['label'],
    //   );
    //   extracted.add(recipe);
    // }
    favsList.value.add(favRecipe);
    print(favsList.value[0].label);
  }

  void getOneRecipe(int index) {
    singleRecipe.clear();
    singleRecipe.value.add(favsList.value[index]);
  }
}
