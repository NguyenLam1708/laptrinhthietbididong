import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final String imagePath = "assets/image/anh1.png";
  final String userName = "Nguyen Thanh Lam";
  final String location = "Bien Hoa, Dong Nai, Viet Nam";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Nội dung chính giữa màn hình
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Ảnh đại diện
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(imagePath),
                  ),
                  const SizedBox(height: 16),
                  // Tên người dùng
                  Text(
                    userName,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Địa chỉ
                  Text(
                    location,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Nút back góc trái trên
          Positioned(
            top: 0,
            left: 0,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {},
            ),
          ),

          // Nút chỉnh sửa góc phải trên
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              icon: const Icon(Icons.edit, color: Colors.green),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}