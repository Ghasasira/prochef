import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochef/controllers/recipeController.dart';
import 'package:prochef/screens/singleRecipe.dart';

class RecipeList extends StatelessWidget {
  RecipeList({super.key});
  final RecipeController recipeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: recipeController.recipes.length,
        itemBuilder: (context, int index) {
          return Padding(
            padding: EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                recipeController.getOneRecipe(index);
                Get.to(SingleRecipe());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: const Color.fromARGB(255, 240, 190, 10),
                      ),
                    ),
                    child: ClipRRect(
                      child: Image.network(
                        recipeController.recipes.value[index].image!,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: (MediaQuery.of(context).size.width) * 0.45,
                        child: Text(
                          recipeController.recipes.value[index].label!,
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        recipeController.recipes.value[index].source!,
                        textAlign: TextAlign.start,
                      ),
                      // Text(
                      //   '2,003 likes',
                      //   textAlign: TextAlign.start,
                      //   style: TextStyle(color: Colors.red),
                      // ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            recipeController.addToFavs(index);
                          },
                          icon: Icon(Icons.favorite_outline)),
                      Text('40 mins'),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
