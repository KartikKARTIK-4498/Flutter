import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Center(
              child: Text(
                "Portfolio",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              String url =
                  "https://www.figma.com/file/Fd1PFZrIBRzdJD6fNQT70g/Livrables-LightsOff---Groupe-8?type=design&node-id=2-3&mode=design&t=tF1dYqSSDYos9pev-0";
              launch(url);
            },
            child: ProjectCard(
              imagePath: "images/light_off.png",
              title: "UI-UX Design - Project lightsoff",
              link:
                  "https://www.figma.com/file/Fd1PFZrIBRzdJD6fNQT70g/Livrables-LightsOff---Groupe-8?type=design&node-id=2-3&mode=design&t=tF1dYqSSDYos9pev-0",
            ),
          ),
          GestureDetector(
            onTap: () async {
              String link = "http://mains-agiles.tk/";
              final Uri _url = Uri.parse(link);
              if (!await launchUrl(_url)) {
              throw Exception('Could not launch $_url');
              }
            },
            child: ProjectCard(
              imagePath: "images/main_agile.png",
              title: "Web development - Ass. Mains- Agile",
              link: "http://mains-agiles.tk/",
            ),
          ),
          GestureDetector(
            onTap: () async {
              String link =
                  "https://github.com/KartikKARTIK-4498/NETFLIX-CLONE.git";
              final Uri _url = Uri.parse(link);
              if (!await launchUrl(_url)) {
                throw Exception('Could not launch $_url');
              }
            },
            child: ProjectCard(
              imagePath: "images/whatsapp_clone.jpeg",
              title: "Whatsapp Clone",
              link: "https://github.com/KartikKARTIK-4498/NETFLIX-CLONE.git",
            ),
          ),
          // Add more ProjectCard widgets if needed
        ],
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

class ProjectCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String link;

  const ProjectCard({
    required this.imagePath,
    required this.title,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                height: 180,
                width: 300,
                image: AssetImage(imagePath),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
