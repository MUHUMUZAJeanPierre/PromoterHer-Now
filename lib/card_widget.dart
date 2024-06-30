// card_widget.dart

import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String imagePath;
  final String name;
  final String occupation;

  CardWidget({
    required this.imagePath,
    required this.name,
    required this.occupation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 120,
        width: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imagePath),
              radius: 50.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: Text(
                occupation,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
