import 'package:flutter/material.dart';

class ProgramScreen extends StatelessWidget {
  const ProgramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '프로그램 화면입니다!',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}