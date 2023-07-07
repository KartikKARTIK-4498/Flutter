import 'package:flutter/material.dart';
import 'package:kartik_portfolio/contact_screen.dart';
import 'package:kartik_portfolio/home_widget.dart';
import 'package:kartik_portfolio/person_details_screen.dart';
import 'package:kartik_portfolio/portfolio_widget.dart';

class MyHomeScreen extends StatefulWidget {
  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeWidget(),
    PersonDetailsScreen(),
    PortfolioWidget(),
    MyContactScreen(),
  ];

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
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Star',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}
