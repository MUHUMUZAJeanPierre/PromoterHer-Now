import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import your LoginScreen here

class AppDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 143, 34, 246),
        height: double.infinity, // Set height to fill available space
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 70),
                Center(
                  child: Text(
                    'Our Services',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 80.0),
                Center(
                  child: Text(
                    "Promoter is an app with a mission to promote female participation in the tech and job markets. We aim to bridge the gender gap by creating and posting various job opportunities tailored to womens skills and aspirations. Our platform serves as a comprehensive resource where users can find job listings that align with their expertise and career goals.By providing access to a wide range of employment options, aPromoter empowers women to take the next step in their professional journeys. We understand the challenges women face in these industries and are dedicated to fostering an inclusive environment where they can thrive. Users can browse through numerous job postings, each carefully selected to ensure it matches their skill set and interests.",
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                ),
                SizedBox(height: 100.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginScreen()),
                    ); // Navigate to LoginScreen
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    minimumSize:
                        MaterialStateProperty.all(Size(double.infinity, 50)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Go to Login',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Color.fromARGB(255, 143, 34, 246)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
