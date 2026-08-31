import 'package:app_portfolio/components/stack_container.dart';
import 'package:app_portfolio/theme/colors.dart';
import 'package:flutter/material.dart';

class StacksScreen extends StatelessWidget {
  const StacksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 100, 30, 0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            spacing: 30,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StackContainer(imgLink: "https://img.icons8.com/color/1200/flutter.jpg", label: "Flutter"),
                  StackContainer(imgLink: "https://img.icons8.com/color/1200/dart.jpg", label: "Dart"),
                  StackContainer(imgLink: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLqbmIDA3CGdMHpvOvlj3RSbc1tDNX-xjZkWCgZeIoYCd_lrUqIT3i7j6Q&s=10", label: "Firebase"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StackContainer(imgLink: "https://img.icons8.com/fluent/1200/supabase.jpg", label: "Supabase"),
                  StackContainer(imgLink: "https://img.icons8.com/color/1200/javascript--v1.jpg", label: "JavaScript"),
                  StackContainer(imgLink: "https://img.icons8.com/color/1200/typescript.jpg", label: "TypeScript"),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StackContainer(imgLink: "https://img.icons8.com/color/1200/tailwindcss.jpg", label: "Tailwind"),
                  StackContainer(imgLink: "https://img.icons8.com/color/1200/angularjs.jpg", label: "Angular"),
                  StackContainer(imgLink: "https://img.icons8.com/plasticine/1200/react.jpg", label: "React"),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StackContainer(imgLink: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6y7-_n8Km0_qiuibfkwK3Oxj_37Xg-cm-etb8UQxvTvg0QZnWr0-b1bQ&s=10", label: "FastAPI"),
                  StackContainer(imgLink: "https://img.icons8.com/color/1200/django.jpg", label: "Django"),
                  StackContainer(imgLink: "https://img.icons8.com/color/1200/java-coffee-cup-logo--v2.jpg", label: "Java"),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StackContainer(imgLink: "https://leadsbridge.com/wp-content/themes/leadsbridge/img/integration-lg-logos/logo543.png", label: "SQLite"),
                  StackContainer(imgLink: "https://img.icons8.com/fluent/1200/mysql-logo.jpg", label: "MySQL"),
                  StackContainer(imgLink: "https://img.icons8.com/color/1200/python--v2.jpg", label: "Python"),

                ],
              ),
            ],
          ),
        )
      )
    );
  }
}
