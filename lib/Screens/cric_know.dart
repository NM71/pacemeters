import 'package:flutter/material.dart';
import 'package:pacemeters/Screens/pace_test.dart';
import 'package:pacemeters/Screens/stats.dart';
import 'package:pacemeters/widgets/bottom_navigation_bar.dart';
import 'home_screen.dart';


class CricKnow extends StatelessWidget {
   CricKnow({super.key});
   int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: CustomBottomNavigationBar(selectedIndex:  _selectedIndex ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Pacemeter'),
        titleTextStyle: TextStyle(
          color: Colors.white
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return const UserProfileBottomSheet();
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Navigate to the next screen (leave blank for now)
              },
              child: const CardWidget(
                title: 'Fast Bowling Drill/Exercises',
                imagePath: 'assets/fast_bowling_image.jpg',
                width: 300, // Adjust the width as needed
                height: 220, // Adjust the height as needed
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Navigate to the next screen (leave blank for now)
              },
              child: const CardWidget(
                title: 'Spinners Drills/Exercises',
                imagePath: 'assets/spinners_image.jpg',
                width: 300, // Adjust the width as needed
                height: 220, // Adjust the height as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final String imagePath;
  final double width;
  final double height;

  const CardWidget({
    super.key,
    required this.title,
    required this.imagePath,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.white,
      elevation: 5.0,
      child: SizedBox(
        width: width,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(15.0)),
              child: Image.asset(
                imagePath,
                height: height - 50, // Adjust the image height as needed
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
