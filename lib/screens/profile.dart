import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.food_bank_rounded,
              size: 100.0,
              color: Colors.amberAccent,
            ),
            Text(
              'To Be Added Soon!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
