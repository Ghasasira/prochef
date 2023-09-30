import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochef/controllers/recipeController.dart';
import 'package:prochef/screens/home.dart';

class SearchScreen extends StatelessWidget {
  final RecipeController recipeController = Get.put(RecipeController());
  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Material(
          child: Container(
            decoration: BoxDecoration(color: Color.fromARGB(255, 59, 85, 99)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'Find The Best Recipe \n For Cooking',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 247, 226, 153),
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    controller: recipeController.inputController,
                    decoration: InputDecoration(
                      labelText: 'Search Recipe',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        try {
                          recipeController.isDone.value = false;
                          recipeController.getRecipes();
                          Get.to(Home());
                        } catch (e) {
                          print("error");
                        }
                      },
                      icon: Icon(Icons.search_rounded),
                      label: Text('search')),

                  //Row(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Flexible(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "images/landimage.jpeg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
