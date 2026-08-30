import 'package:app_portfolio/theme/colors.dart';
import 'package:flutter/material.dart';

class StackContainer extends StatelessWidget {
  final String imgLink;
  final String label;

  const StackContainer({super.key, required this.imgLink, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: secondary),
        color: Colors.white
      ),
      child: Column(
        children: [
          Image.network(imgLink,),
          Text(label, style: TextStyle(color: primary, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}