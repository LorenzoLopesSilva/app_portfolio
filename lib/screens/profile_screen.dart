import 'package:app_portfolio/components/primary_title.dart';
import 'package:app_portfolio/components/profile_card.dart';
import 'package:app_portfolio/components/stack_mini_container.dart';
import 'package:app_portfolio/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileCard(),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    PrimaryTitle(text: "Presentation"),
                    Text("Mobile developer in training, passionate about turning ideas into real apps using Flutter/Dart. I currently work as a Digital Solutions Developer at Bosch Brazil, combining automation and full-stack development in my daily work. Always looking for the next mobile challenge.",
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrimaryTitle(text: "Main Skills"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 10,
                      children: [
                        StackMiniContainer(imgPath: "assets/images/flutter.png", label: "Flutter"),
                        StackMiniContainer(imgPath: "assets/images/dart.png", label: "Dart"),
                        StackMiniContainer(imgPath: "assets/images/python.png", label: "Python"),
                        StackMiniContainer(imgPath: "assets/images/javascript.png", label: "JavaScript"),
                        StackMiniContainer(imgPath: "assets/images/mysql.png", label: "MySQL"),
                        
                      ],
                    )
                  ],
                )
              ],
            ),
          )
          
        ],
      ),
    );
  }
}
