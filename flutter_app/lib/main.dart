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
            // First container (RootBud)
            Container(
              color: const Color.fromARGB(255, 221, 66, 10),
              height: 400,
              width: 1000,
              child: const Align(
                alignment:
                    Alignment.topCenter, // Aligns content to the top center
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ), // Adjust top padding as needed
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Keeps content compact
                    children: [
                      // RootBud Text
                      Text(
                        'RootBud',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'YourFontName',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10), // Space between texts
                    ],
                  ),
                ),
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
              bottom: 50, // Positioned near the bottom of the screen
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add functionality when button is pressed
                    print('Button Pressed');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                      255,
                      0,
                      92,
                      18,
                    ), // Button color
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    ), // Button padding
                  ),
                  child: const Text(
                    'Press Me',
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
