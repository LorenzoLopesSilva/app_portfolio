import 'package:app_portfolio/components/project_container.dart';
import 'package:app_portfolio/theme/colors.dart';
import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
      ),
      body: Padding(
        padding: EdgeInsets.only(),
        child: SizedBox(
          child: Column(
            children: [
              ProjectContainer(title: "Lighter", description: "Um aplicativo para unir terapeutas e seus pacientes", year: 2024)
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectDescriptionScreen extends StatelessWidget {
  const ProjectDescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}