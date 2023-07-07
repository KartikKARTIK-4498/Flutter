
import 'package:flutter/material.dart';
import 'package:kartik_portfolio/common_card_widget.dart';

class WorkExperienceScreen extends StatelessWidget {
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
                    "Work Experience",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CommonCardWidget(
                  title: "2022 - Ongoing",
                  subtitle: "Bachelor's in web development",
                  description:
                      "Currently, I'm doing my second year of bachelor's degree in web development at college - DIGITAL CAMPUS-Paris where I'm learning advanced front-end development using HTML, CSS, PHP, and Javascript as well as advanced web and graphic design using FIGMA, ADOBE-XD, Photoshop and many more.",
                ),
                SizedBox(height: 16),
                CommonCardWidget(
                  title: "2021 - 2022",
                  subtitle: "Diploma In French",
                  description:
                      "I studied the French language at school - Campus Langues - Paris. I reached level B1 in the French language.",
                ),
                SizedBox(height: 16),
                CommonCardWidget(
                  title: "2019 - 2020",
                  subtitle: "Bachelors In Computer Sciences",
                  description:
                      "I did my first year of computer science degree at \"EPSI\" school where I learned front-end development (HTML, CSS, AND PHP), backend development (C, C++), and database (MYSQL). I also won the scratch game development contest.",
                ),
                SizedBox(height: 16),
                CommonCardWidget(
                  title: "2022 - Ongoing",
                  subtitle: "McDonald's, Puteaux-92800",
                  description:
                      "I work as a Zone Manager for McDonald's. My job at McDonald's is to manage the crew while also creating content and creating infographics for their regular social media posts.",
                ),
                SizedBox(height: 16),
                CommonCardWidget(
                  title: "2021 - Ongoing",
                  subtitle: "Indmag Remedies Pvt. Ltd., India",
                  description:
                      "I work here as a Freelancer. At this company, I support them as a Web Developer and Graphic Designer, as well as an E-commerce Executive. The company has branches of several personal care brands whose overall marketing and online presence is luckily being my efforts.",
                ),
                SizedBox(height: 16),
                CommonCardWidget(
                  title: "2021 - 2022",
                  subtitle: "Vicoloinnovations.Com",
                  description:
                      "I founded Vicolo Innovations, which provides a comprehensive range of modern marketing and creative services. It is an E-commerce and Digital Marketing hub that I and my small but powerful team members support.",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
