import 'package:flutter/material.dart';
import 'package:flutterearn/main.dart';
import 'splash_screen.dart';
import 'app_details_screen.dart';
import 'login_screen.dart';
import 'not_found_screem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routing Example',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/detail': (context) => AppDetailsScreen(),
        '/login_screen': (context) => LoginScreen(),
        '/main': (context) => MainApp(userName: '', userEmail: '',),
      },
      onGenerateRoute: (settings) {
        // Implement onGenerateRoute if necessary
        return MaterialPageRoute(
          builder: (context) => NotFoundScreen(), // Replace with a screen for unknown routes
          settings: settings,
        );
      },
      onUnknownRoute: (settings) {
        // Handle unknown routes here
        return MaterialPageRoute(
          builder: (context) => NotFoundScreen(), // Replace with a screen for unknown routes
          settings: settings,
        );
      },
    );
  }
}
