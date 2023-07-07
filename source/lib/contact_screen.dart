import 'package:flutter/material.dart';

class MyContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Center(
                child: Text(
                  "Contact me",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
              CustomBox(
                icon: Icons.phone,
                text: '749326352',
              ),
              SizedBox(height: 16),
              CustomBox(
                icon: Icons.location_on,
                text: 'India',
              ),
              SizedBox(height: 16),
              CustomBox(
                icon: Icons.mail,
                text: 'Info@kartikkartik.com',
              ),
              SizedBox(height: 16),
              CustomBox(
                icon: Icons.language,
                text: 'kartikkartik.com',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class CustomBox extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomBox({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(height: 8),
          Text(text),
        ],
      ),
    );
  }
}
