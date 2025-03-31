import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 92, 18),
          title: const Text('RootBud'),
        ),
        body: Stack(
          children: [
            /// First container (RootBud)
            Positioned(
            top: 0, // Ensures it starts at the top
            left: 0,
            right: 0,
            child: Container(
            color: const Color.fromARGB(255, 221, 66, 10),
            height: 400,
            child: const Align(
            alignment: Alignment.topCenter,
            child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              Text(
              'RootBud',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'YourFontName',
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    ),
  ),
),



            
            

            // Image
            Positioned(
              top: 100,
              left: 150,
              child: Image.asset(
                'assets/images/Plant.png', // Make sure the image is added to the assets folder and referenced in pubspec.yaml
                width: 100, // Adjust the width as needed
                height: 100, // Adjust the height as needed
              ),
            ),

            // Second container (Made by)
            Positioned(
              top: 300, // Controls the vertical position
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                color: Colors.black.withOpacity(
                  0.7,
                ), // Semi-transparent background
                child: const Text(
                  'Made by Tyler Chadwick, Michael Lopez, Chris Sanchez, and Emdya Permuy-Llovio',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18, // Slightly smaller than "RootBud"
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            // Fourth Child - Button below the container
            Positioned(
              bottom: 100, // Positioned near the bottom of the screen
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add functionality when button is pressed
                    print('Button Pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 1, 141, 24), // Button color
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ), // Button padding
                  ),
                  child: const Text(
                    'Create a RootBud!',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
