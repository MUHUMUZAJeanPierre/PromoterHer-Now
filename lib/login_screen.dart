import 'package:flutter/material.dart';
import 'package:flutterearn/main.dart';
import 'package:flutterearn/signup_screen.dart';
import 'package:flutterearn/auth_service.dart'; // Import your AuthService class

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _authService = AuthService(); // Instantiate AuthService
  String? email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 80),
              Text(
                'Log in',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                'Welcome to promote ',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email address'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onSaved: (value) => email = value,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onSaved: (value) => password = value,
              ),
              SizedBox(height: 34),
              SizedBox(
                height: 65,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      String? result = await _authService.login(
                        email: email!,
                        password: password!,
                      );
                      if (result == 'Success') {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainApp(
                              userName:
                                  'John Doe', // Retrieve the user's name from Firebase or your database
                              userEmail: email!,
                            ),
                          ),
                        );
                      } else {
                        // Handle error, e.g., show a dialog with the result message
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Error'),
                            content:
                                Text(result ?? 'An unknown error occurred.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 143, 34, 246),
                    ), // Use RGBA color
                  ),
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 65,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    // Add functionality for password recovery
                  },
                  child: Text(
                    'Forgotten your password?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 48, 74),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/apple.jpeg',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    'assets/images/google.jpeg',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    'assets/images/facebook.jpg',
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
              SizedBox(height: 24),
              SizedBox(
                height: 65,
                width: double.infinity,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 143, 34, 246),
                    ), // Use RGBA color
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  child: Text(
                    'Create an account',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
