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
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam semper, magna nec maximus mollis, augue justo tristique tortor, et tristique felis est at ipsum. In hac habitasse platea dictumst. Sed nec tellus sed eros ultrices posuere non non nisi. Suspendisse potenti. Sed id orci in neque condimentum congue a sed est. Mauris et lectus augue. Vivamus ac urna in turpis egestas facilisis sit amet vel nunc. Vestibulum pretium libero quis sapien viverra egestas. Phasellus tempor diam purus, eget aliquet lacus aliquam quis. Nullam faucibus, augue sit amet ultricies scelerisque, odio magna venenatis tortor, vel consectetur elit est at lectus.',
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
