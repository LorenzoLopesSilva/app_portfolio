import 'package:app_portfolio/components/stack_container.dart';
import 'package:app_portfolio/theme/colors.dart';
import 'package:flutter/material.dart';

class StacksScreen extends StatelessWidget {
  const StacksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(30, 100, 30, 100),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            spacing: 30,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StackContainer(imgPath: "assets/images/flutter.png", label: "Flutter"),
                  StackContainer(imgPath: "assets/images/dart.png", label: "Dart"),
                  StackContainer(imgPath: "assets/images/firebase.png", label: "Firebase"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StackContainer(imgPath: "assets/images/supabase.png", label: "Supabase"),
                  StackContainer(imgPath: "assets/images/javascript.png", label: "JavaScript"),
                  StackContainer(imgPath: "assets/images/typescript.png", label: "TypeScript"),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StackContainer(imgPath: "assets/images/tailwind.png", label: "Tailwind"),
                  StackContainer(imgPath: "assets/images/angular.png", label: "Angular"),
                  StackContainer(imgPath: "assets/images/react.png", label: "React"),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StackContainer(imgPath: "assets/images/fastapi.png", label: "FastAPI"),
                  StackContainer(imgPath: "assets/images/django.png", label: "Django"),
                  StackContainer(imgPath: "assets/images/mysql.png", label: "MySQL"),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StackContainer(imgPath: "assets/images/java.png", label: "Java"),
                  StackContainer(imgPath: "assets/images/spring.png", label: "Spring Boot"),
                  StackContainer(imgPath: "assets/images/python.png", label: "Python"),

                ],
              ),
            ],
          ),
        )
      )
    );
  }
}
