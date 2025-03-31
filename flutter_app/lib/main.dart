import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 92, 18),
        title: const Text('RootBud'),
      ),
      body: Stack(
        children: [
          /// First container (Red Background)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: const Color.fromARGB(255, 221, 66, 10),
              height: 400,
            ),
          ),

          /// RootBud Text in its own container
          Positioned(
            top: 20,
            left: 50,
            right: 50,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: const Text(
                'RootBud',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'YourFontName',
                  color: Colors.black,
                ),
              ),
            ),
          ),

          /// Image inside its own container
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              width: 300,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/images/Fullplant.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          /// Second container (Made by)
          Positioned(
            top: 300,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              color: Colors.black.withOpacity(0.7),
              child: const Text(
                'Made by Tyler Chadwick, Michael Lopez, Chris Sanchez, and Emdya Permuy-Llovio',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          /// Button below the container
          Positioned(
            bottom: 150,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the blank screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BlankScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 1, 141, 24),
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
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
    );
  }
}

/// **New Blank Screen**
class BlankScreen extends StatelessWidget {
  const BlankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create RootBud'),
        backgroundColor: const Color.fromARGB(255, 0, 92, 18),
      ),
      body: Stack(
        children: [
          /// First container (Red Background)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: const Color.fromARGB(255, 221, 66, 10),
              height: 200,
            ),
          ),
          /// RootBud Text in its own container
          Positioned(
            top: 240,
            left: 50,
            right: 50,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 38, 255, 0),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: const Text(
                'Name Your RootBud:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'YourFontName',
                  color: Colors.black,
                ),
              ),
            ),
          ),

          //TextField
          /// TextField below "Name Your RootBud"
Positioned(
  top: 320, // Adjust this value to position it correctly
  left: 50,
  right: 50,
  child: Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 0, 150, 0), // Green background
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3),
          blurRadius: 5,
          spreadRadius: 2,
        ),
      ],
    ),
    child: const TextField(
      style: TextStyle(color: Colors.white), // White text color
      decoration: InputDecoration(
        hintText: 'Enter a name...',
        hintStyle: TextStyle(color: Colors.white70), // Light hint color
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(15),
      ),
    ),
  ),
),

        ], // <-- Close the Stack widget properly
      ),
    ); // <-- Close the Scaffold widget properly
  }
}

