import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochef/controllers/recipeController.dart';
import 'package:prochef/screens/cook.dart';
// import 'package:http/http.dart';

class SingleRecipe extends StatelessWidget {
  final RecipeController recipeController = Get.find();
  SingleRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Material(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  recipeController.singleRecipe.value[0].label!,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                  ),
                ),
                Container(
                  child: Image.network(
                    recipeController.singleRecipe.value[0].image!,
                    height: 250.0,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                    //scale: 0.6,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Ingridients(${recipeController.singleRecipe.value[0].ingredients?.length})',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Flexible(
                  child: ListView.builder(
                    itemCount: recipeController
                        .singleRecipe.value[0].ingredients?.length,
                    itemBuilder: (context, int index) {
                      return ListTile(
                        leading: Icon(Icons.list),
                        // trailing: Text(
                        //   'quantity',
                        //   style: TextStyle(fontWeight: FontWeight.w400),
                        // ),
                        title: Text(
                          recipeController
                              .singleRecipe.value[0].ingredients?[index]!,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(const CookScreen());
                  },
                  child: const Text('Start Cookin`'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
