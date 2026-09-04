import 'package:app_portfolio/components/primary_title.dart';
import 'package:app_portfolio/components/project_detail.dart';
import 'package:app_portfolio/theme/colors.dart';
import 'package:flutter/material.dart';


class ProjectInfo {
  final String title;
  final String description;
  final int year;
  final String logo;
  final String stackPath1;
  final String? stackPath2;
  final String? stackPath3;
  final bool inDevelopment;

  const ProjectInfo({
    required this.title,
    required this.description,
    required this.year,
    this.logo = "assets/images/iconplaceholder.png",
    required this.stackPath1,
    this.stackPath2,
    this.stackPath3,
    this.inDevelopment = false,

  });
}

class ProjectContainer extends StatelessWidget {
  final ProjectInfo projectInfo;
  const ProjectContainer({super.key, required this.projectInfo});

  @override
  Widget build(BuildContext context) {
    final pi = projectInfo;

    final stack1 = pi.stackPath1;
    final stack2 = pi.stackPath2;
    final stack3 = pi.stackPath3;

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProjectDetail(projectInfo: projectInfo),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: background,
            border: Border(bottom: BorderSide(color: primary, width: 3)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20,
            children: [
              Image.asset(pi.logo, width: 80),
              Expanded(
                child: Column(
                  spacing: 15,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PrimaryTitle(text: pi.title),
                        Row(
                          spacing: 5,
                          children: [
                            Image.asset(stack1, width: 35),
                            stack2 != null
                                ? Image.asset(stack2, width: 35)
                                : const SizedBox.shrink(),
                            stack3 != null
                                ? Image.asset(stack3, width: 35)
                                : const SizedBox.shrink(),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      pi.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
