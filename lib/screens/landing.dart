import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochef/controllers/recipeController.dart';
import 'package:prochef/screens/home.dart';

class LandingScreen extends StatelessWidget {
  final controller = Get.put(RecipeController());
  LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/landimage.jpeg"),
                  fit: BoxFit.cover)),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Cooking Experience',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Like a Chef',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Let's make a delicious dish with the best recipe for the family ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 46, 221, 177),
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.to(const Home());
                    },
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
