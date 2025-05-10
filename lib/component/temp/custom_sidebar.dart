import 'package:flutter/material.dart';

class CustomSidebar extends StatelessWidget {
  const CustomSidebar({
    super.key,
    this.username,
    this.userAvatar,
    this.selectedProject,
  });

  final String? username;
  final String? userAvatar;
  final String? selectedProject;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
