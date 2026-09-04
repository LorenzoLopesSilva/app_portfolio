import 'package:app_portfolio/components/profile_card.dart';
import 'package:app_portfolio/components/project_container.dart';
import 'package:app_portfolio/theme/colors.dart';
import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(),
        child: SizedBox(
          child: Column(
            children: [
              ProfileCard(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ProjectContainer(
                        projectInfo: ProjectInfo(
                          year: 2024,
                          title: "Ligther", 
                          description: "Um aplicativo para conectar terapeutas e seus pacientes. O Lighter entrega um processo terapeutico mais completo e interativo.", 
                          stackPath1: "assets/images/stacks/flutterflow.png",
                          stackPath2: "assets/images/stacks/php.png",
                          stackPath3: "assets/images/stacks/mysql.png",
                          logo: "assets/images/projects/lighter.png",
                        ),
                      ),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}