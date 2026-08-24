import 'package:app_portfolio/components/stack_container.dart';
import 'package:app_portfolio/theme/colors.dart';
import 'package:flutter/material.dart';

class StacksScreen extends StatelessWidget {
  const StacksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Column(
        children: [
          StackContainer(imgLink: "https://raw.githubusercontent.com/rs-nn/react-skill-icons-vite/main/.github/icons/Flutter-Dark.svg", label: "Flutter")
        ],
      ),
    );
  }
}
