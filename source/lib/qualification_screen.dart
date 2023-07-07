import 'dart:math';

import 'package:flutter/material.dart';

class QualificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF4C4DDC),
        title: Row(
          children: [
            SizedBox(width: 10),
            ClipOval(
              child: Image(
                height: 50,
                width: 50,
                image: AssetImage("images/icon.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 20),
            Text(
              "Kartik Portfolio",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Text(
                    "My Qualifications & Skills",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Card(
                  elevation: 3,
                  child: Container(
                      child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        ChipListWidget(),
                      ],
                    ),
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChipListWidget extends StatelessWidget {
  final List<String> chipTexts = [
    "Python",
    "Html/css",
    "NodeJS",
    "Dart",
    "Flutter",
    "ReactJS",
    "React Native",
    "Symfony 5",
    "Php & Mysql"
  ];

  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 10.0,
      children: chipTexts.map((text) {
        Color randomColor() {
          return Color.fromARGB(
            1000, // Adjust the opacity value as per your preference (0-255)
            random.nextInt(256),
            random.nextInt(256),
            random.nextInt(256),
          );
        }

        return Chip(
          label: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: randomColor(),
        );
      }).toList(),
    );
  }
}
