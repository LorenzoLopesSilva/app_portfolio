import 'package:app_portfolio/components/project_container.dart';
import 'package:app_portfolio/theme/colors.dart';
import 'package:flutter/material.dart';

class ProjectDetail extends StatelessWidget {
  final ProjectInfo projectInfo;
  const ProjectDetail({super.key, required this.projectInfo});

  @override
  Widget build(BuildContext context) {
    final pi = projectInfo;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text("Project Details", style: TextStyle(color: background),),
        iconTheme: IconThemeData(color: background),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(30),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(pi.logo, width: 150, fit: BoxFit.contain,),
                    Text(pi.title, style: TextStyle(fontSize: 30),),
                    SizedBox(height: 20,),
                    Divider(color: primary,)
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        )
        
      )
    );
  }
}