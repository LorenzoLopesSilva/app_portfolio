import 'package:app_portfolio/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: primary),
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
                child: Image.network(
                  "https://avatars.githubusercontent.com/u/122306207?v=4",
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                "Lorenzo Lopes",
                style: TextStyle(
                  fontSize: 20,
                  color: background,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Web | Mobile Developer",
                style: TextStyle(fontSize: 16, color: background),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
