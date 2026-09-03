import 'package:app_portfolio/theme/colors.dart';
import 'package:flutter/material.dart';

class StackMiniContainer extends StatelessWidget {
  final String imgPath;
  final String label;

  const StackMiniContainer({super.key, required this.imgPath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        spacing: 5,
        children: [
          Image.asset(imgPath, width: 50,),
          Text(label, style: TextStyle(color: secondary, fontWeight: FontWeight.bold, fontSize: 15),)
        ],
      ),
    );
  }
}