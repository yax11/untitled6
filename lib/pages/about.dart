import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Center(
            child: Text(
              'ECWA Goodnews, Durumi II\nMedia App',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Version 1.0.0',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 32),
          Text(
            'About the App',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'This app is designed to...',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
