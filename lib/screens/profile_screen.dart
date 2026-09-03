import 'package:app_portfolio/components/primary_title.dart';
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
          Container(
            decoration: BoxDecoration(
              color: primary,
            ),
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 80, 20, 20),
                child: Column(
                  spacing: 5,
                  children: [
                    Container(
                      width: 150,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      child: Image.network("https://avatars.githubusercontent.com/u/122306207?v=4", fit: BoxFit.fill,)
                    ),
                    Text(
                      "Lorenzo Lopes",
                      style: TextStyle(
                        fontSize: 20,
                        color: background,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "Web | Mobile Developer",
                      style: TextStyle(
                        fontSize: 16,
                        color: background,
                      ),
                    )
                  ],
                ),
              )
            ),
          ),
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
                      spacing: 10,
                      children: [
                        StackMiniContainer(imgPath: "assets/images/flutter.png", label: "Flutter"),
                        StackMiniContainer(imgPath: "assets/images/dart.png", label: "Dart"),
                        
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
