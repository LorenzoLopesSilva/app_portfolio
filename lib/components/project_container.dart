import 'package:app_portfolio/theme/colors.dart';
import 'package:flutter/material.dart';

class ProjectContainer extends StatelessWidget {
  final String title;
  final String description;
  final int year;
  final String iconAsset;

  const ProjectContainer({
    super.key,
    required this.title,
    required this.description,
    required this.year,
    this.iconAsset = "assets/images/iconplaceholder.png"
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(
        builder: (context) => ProjectPage(title: title, description: description, year: year),
      )),
      child: Container(
        padding: EdgeInsets.only(bottom: 10, top: 10, left: 20, right: 20),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: primary)
          )
        ),
        width: double.infinity,
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 30,
                  children: [
                    Image.asset(iconAsset, width: 50,),
                    Text(title, style: TextStyle(fontSize: 20, color: primary, fontWeight: FontWeight.bold),),
                  ],
                ),
                Text("$year")
              ],
            ),
            Text(description),
          ],
        ),
      ),
    );
  }
}

class ProjectPage extends StatelessWidget {
  final String title;
  final String description;
  final int year;
  final String iconAsset;

  const ProjectPage({
    super.key,
    required this.title,
    required this.description,
    required this.year,
    this.iconAsset = "assets/images/iconplaceholder.png"
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text("Project", style: TextStyle(color: background),),
        iconTheme: IconThemeData(color: background),
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            spacing: 10,
            children: [
              Image.asset(iconAsset, width: 100,),
              Text(title, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
              Container(
                color: secondary,
                width: double.infinity,
                height: 1,
              ),
              Text(description)
            ],
          ),
        )
      ),
    );
  }
}