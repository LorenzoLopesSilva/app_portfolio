import 'package:app_portfolio/components/primary_title.dart';
import 'package:app_portfolio/theme/colors.dart';
import 'package:flutter/material.dart';

class ProjectContainer extends StatelessWidget {
  final String title;
  final String description;
  final String logo;
  final String stackPath1;
  final String? stackPath2;
  final String? stackPath3;
  const ProjectContainer({
    super.key,
    required this.title,
    required this.description,
    this.logo = "assets/images/iconplaceholder.png",
    required this.stackPath1,
    this.stackPath2,
    this.stackPath3,
  });

  @override
  Widget build(BuildContext context) {
    final stack1 = stackPath1;
    final stack2 = stackPath2;
    final stack3 = stackPath3;

    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: background,
            border: Border(
              bottom: BorderSide(color: primary, width: 3)
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [
              Image.asset(logo, width: 80),
              Expanded(
                child: Column(
                  spacing: 15,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PrimaryTitle(text: title),
                        Row(
                          children: [
                            Image.asset(stack1, width: 30),
                            stack2 != null
                                ? Image.asset(stack2)
                                : const SizedBox.shrink(),
                            stack3 != null
                                ? Image.asset(stack3)
                                : const SizedBox.shrink(),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      description,
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
      ) 
    );
  }
}
