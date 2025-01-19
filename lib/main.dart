import 'package:first/screens/home/home_screen.dart';
import 'package:first/screens/login/login_screen.dart';
import 'package:first/widget/layout/main_layout.dart';
import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(), // 로그인 화면을 초기 화면으로 설정
    );
  }
}
