import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _CustomLoginScreenState();
}

class _CustomLoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  bool _keepLoggedIn = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 배경 이미지
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('background_1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.8), // 배경 어둡게
          ),
          // 로그인 폼
          Center(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16),
                constraints: const BoxConstraints(maxWidth: 400),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8), // 약간 투명한 검은색 배경
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 16),
                    // 아이디 입력 필드
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: '아이디',
                        labelStyle: const TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // 비밀번호 입력 필드
                    TextFormField(
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: '비밀번호',
                        labelStyle: const TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // 로그인 상태 유지 스위치
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '로그인 상태 유지',
                          style: TextStyle(color: Colors.white),
                        ),
                        Switch(
                          value: _keepLoggedIn,
                          onChanged: (value) {
                            setState(() {
                              _keepLoggedIn = value;
                            });
                          },
                          activeColor: Colors.white,
                          activeTrackColor: Colors.blue,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // 로그인 버튼
                    ElevatedButton(
                      onPressed: () {
                        print('로그인 버튼 클릭');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text('로그인',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 16),
                    // 하단 텍스트
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            print('아이디 찾기 클릭');
                          },
                          child: const Text(
                            '아이디 찾기',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        const Text('|', style: TextStyle(color: Colors.grey)),
                        InkWell(
                          onTap: () {
                            print('비밀번호 찾기 클릭');
                          },
                          child: const Text(
                            '비밀번호 찾기',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        const Text('|', style: TextStyle(color: Colors.grey)),
                        InkWell(
                          onTap: () {
                            print('회원가입 클릭');
                          },
                          child: const Text(
                            '회원가입',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Divider(color: Colors.grey),
                    const Center(
                      child: Text(
                        'SNS 계정으로 로그인',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // SNS 로그인 버튼들
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildSNSButton(Icons.facebook, Colors.blue),
                        _buildSNSButton(Icons.language, Colors.green),
                        // Naver
                        _buildSNSButton(Icons.chat, const Color(0xFFFEE500)),
                        // Kakao
                        _buildSNSButton(Icons.apple, Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSNSButton(IconData icon, Color color) {
    return CircleAvatar(
      radius: 24,
      backgroundColor: color,
      child: IconButton(
        icon: Icon(icon,
            color: color == Colors.white ? Colors.black : Colors.white),
        onPressed: () {
          print('SNS 버튼 클릭');
        },
      ),
    );
  }
}
