import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '프로필 화면입니다!',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}