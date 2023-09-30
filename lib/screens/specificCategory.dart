import 'package:flutter/material.dart';
import 'package:prochef/reusables/recipeList.dart';

class GroupedRecipes extends StatelessWidget {
  const GroupedRecipes({super.key});

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
      ),
      body: SafeArea(
        child: Material(
          child: Column(
            children: [
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 50.0,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(15.0),
              //     border: Border.all(color: Colors.amberAccent),
              //   ),
              // ),
              Text(
                'BreakFast',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(
              //   height: 15.0,
              // ),
              Divider(
                color: Colors.amberAccent,
              ),
              Flexible(
                child: RecipeList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
