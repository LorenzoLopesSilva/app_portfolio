import 'package:app_portfolio/theme/colors.dart';
import 'package:flutter/material.dart';

class StackContainer extends StatelessWidget {
  final String imgPath;
  final String label;

  const StackContainer({super.key, required this.imgPath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 110,
      decoration: BoxDecoration(
        border: Border.all(color: secondary),
        borderRadius: BorderRadius.circular(10),
        color: secondary
      ),
      child: Column(
        spacing: 5,
        children: [
          Image.asset(imgPath,),
          Text(label, style: TextStyle(color: background, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}