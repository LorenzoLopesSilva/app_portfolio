import 'package:app_portfolio/theme/colors.dart';
import 'package:flutter/material.dart';

class PrimaryTitle extends StatelessWidget {
  final String text;
  const PrimaryTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.w900, color: primary, fontSize: 23),
    );
  }
}
