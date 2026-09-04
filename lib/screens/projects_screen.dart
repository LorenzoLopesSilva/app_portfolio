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
                        title: "Projeto Teste", 
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue rhoncus fringilla. Ut vel volutpat augue. Phasellus magna nisi, venenatis et lacus et, sagittis sodales eros. Donec ac arcu a ex congue aliquet. Ut ornare metus vel ex malesuada suscipit. Morbi laoreet massa quis tincidunt ultricies. Aenean imperdiet at neque id vehicula.", 
                        stackPath1: "assets/images/flutter.png"
                      ),
                      ProjectContainer(
                        title: "Projeto Teste", 
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue rhoncus fringilla. Ut vel volutpat augue. Phasellus magna nisi, venenatis et lacus et, sagittis sodales eros. Donec ac arcu a ex congue aliquet. Ut ornare metus vel ex malesuada suscipit. Morbi laoreet massa quis tincidunt ultricies. Aenean imperdiet at neque id vehicula.", 
                        stackPath1: "assets/images/flutter.png"
                      ),
                      ProjectContainer(
                        title: "Projeto Teste", 
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue rhoncus fringilla. Ut vel volutpat augue. Phasellus magna nisi, venenatis et lacus et, sagittis sodales eros. Donec ac arcu a ex congue aliquet. Ut ornare metus vel ex malesuada suscipit. Morbi laoreet massa quis tincidunt ultricies. Aenean imperdiet at neque id vehicula.", 
                        stackPath1: "assets/images/flutter.png"
                      ),
                      ProjectContainer(
                        title: "Projeto Teste", 
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue rhoncus fringilla. Ut vel volutpat augue. Phasellus magna nisi, venenatis et lacus et, sagittis sodales eros. Donec ac arcu a ex congue aliquet. Ut ornare metus vel ex malesuada suscipit. Morbi laoreet massa quis tincidunt ultricies. Aenean imperdiet at neque id vehicula.", 
                        stackPath1: "assets/images/flutter.png"
                      ),
                      ProjectContainer(
                        title: "Projeto Teste", 
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue rhoncus fringilla. Ut vel volutpat augue. Phasellus magna nisi, venenatis et lacus et, sagittis sodales eros. Donec ac arcu a ex congue aliquet. Ut ornare metus vel ex malesuada suscipit. Morbi laoreet massa quis tincidunt ultricies. Aenean imperdiet at neque id vehicula.", 
                        stackPath1: "assets/images/flutter.png"
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