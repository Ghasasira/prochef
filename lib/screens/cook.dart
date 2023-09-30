import 'package:flutter/material.dart';

class CookScreen extends StatelessWidget {
  const CookScreen({super.key});

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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color.fromARGB(213, 240, 165, 163),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('20 mins'),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'How To Cook',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Salmon Sushi',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    height: 300.0,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Season the Fish Pieces',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                    Text(
                      'Just before marinating, liberally coat the pieces with salt',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Step 4 of 8',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.amberAccent,
                          ),
                          height: 60.0,
                          width: 60.0,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.pause),
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.amberAccent,
                          ),
                          height: 60.0,
                          width: 60.0,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.done_sharp),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
