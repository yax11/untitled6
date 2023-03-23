import 'package:flutter/material.dart';
import "package:url_launcher/url_launcher.dart";

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: Text(
              'ECWA Goodnews, Durumi II\nMedia App',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
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
            'This app is designed to aid worship in and outside the Church premises',
            style: TextStyle(fontSize: 16),
          ),
          Padding(padding: EdgeInsets.all(20.0)),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffe6eaf7)),
            child: IconButton(
              icon: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "yakubuharuna11@gmail.com",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff012bb1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Icon(
                    Icons.send,
                    color: Color(0xff012bb1),
                  )
                ],
              ),
              onPressed: () {
                launchUrl(Uri(
                  scheme: 'mailto',
                  path: 'yakubuharuna11@gmail.com',
                ));
              },
            ),
          ),

          Padding(padding: EdgeInsets.all(6.0)),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffe6eaf7)),
            child: IconButton(
              icon: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "08143002447",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff012bb1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Icon(
                    Icons.call,
                    color: Color(0xff012bb1),
                  )
                ],
              ),
              onPressed: () {
                launchUrl(Uri(
                  scheme: 'tel',
                  path: '2348143002447',
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
