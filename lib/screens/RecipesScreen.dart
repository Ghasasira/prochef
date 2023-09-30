import 'package:flutter/material.dart';
import 'package:prochef/reusables/recipeList.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Material(
            child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      alignment: Alignment.topLeft,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              'Hello!',
              textAlign: TextAlign.left,
              style: TextStyle(
                shadows: [
                  Shadow(color: Colors.amberAccent, offset: Offset(2, 4))
                ],
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Stack(
              children: [
                Container(
                  height: 150.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: const Color.fromARGB(255, 240, 190, 10),
                    ),
                  ),
                  child: ClipRRect(
                    child: Image.asset(
                      'images/hero.jpeg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'You Can Cook \n Anything',
                    style: TextStyle(
                        shadows: [
                          Shadow(
                              color: Colors.amberAccent, offset: Offset(2, 2))
                        ],
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Flexible(
              child: RecipeList(),
            ),
          ],
        )),
      ),
    );
    ;
  }
}
