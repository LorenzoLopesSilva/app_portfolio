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
                  StackContainer(imgPath: "assets/images/stacks/flutter.png", label: "Flutter"),
                  StackContainer(imgPath: "assets/images/stacks/dart.png", label: "Dart"),
                  StackContainer(imgPath: "assets/images/stacks/firebase.png", label: "Firebase"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StackContainer(imgPath: "assets/images/stacks/supabase.png", label: "Supabase"),
                  StackContainer(imgPath: "assets/images/stacks/javascript.png", label: "JavaScript"),
                  StackContainer(imgPath: "assets/images/stacks/typescript.png", label: "TypeScript"),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StackContainer(imgPath: "assets/images/stacks/tailwind.png", label: "Tailwind"),
                  StackContainer(imgPath: "assets/images/stacks/angular.png", label: "Angular"),
                  StackContainer(imgPath: "assets/images/stacks/react.png", label: "React"),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StackContainer(imgPath: "assets/images/stacks/fastapi.png", label: "FastAPI"),
                  StackContainer(imgPath: "assets/images/stacks/django.png", label: "Django"),
                  StackContainer(imgPath: "assets/images/stacks/mysql.png", label: "MySQL"),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StackContainer(imgPath: "assets/images/stacks/java.png", label: "Java"),
                  StackContainer(imgPath: "assets/images/stacks/spring.png", label: "Spring Boot"),
                  StackContainer(imgPath: "assets/images/stacks/python.png", label: "Python"),

                ],
              ),
            ],
          ),
        )
      )
    );
  }
}
