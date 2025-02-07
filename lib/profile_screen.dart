import 'package:flutter/material.dart';
import 'edit_profile_screen.dart'; // Import EditProfileScreen

class ProfileScreen extends StatelessWidget {
  final String name;
  final String email;

  ProfileScreen({required this.name, required this.email, required userName, required userEmail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40.0), // Adjust spacing as needed
          CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage(
              'assets/images/MuhumuzaImage.png', // Replace with actual image path
            ),
          ),
          SizedBox(height: 24.0),
          Text(
            name,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            email,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[600],
            ),
          ),
          Expanded(child: SizedBox()), // Spacer to push button to the bottom
          Container(
            margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
            width: double.infinity, // Adjust width to fill available space
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfileScreen(), // Navigate to EditProfileScreen
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 143, 34, 246)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
