import 'package:flutter/material.dart';
import '../../models/user_model.dart';
import '../viewmodels/auth_view_model.dart'; // Import LoginViewModel
import 'login_screen.dart';  // Import trang đăng nhập

class ProfileScreen extends StatelessWidget {
  final UserModel user;
  final AuthViewModel loginViewModel = AuthViewModel(); // Khởi tạo LoginViewModel

  ProfileScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Back Button + Title
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Spacer(),
                  const Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
              const SizedBox(height: 10),
              // Avatar with camera icon
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: user.photoUrl.isNotEmpty
                        ? NetworkImage(user.photoUrl)
                        : const AssetImage("assets/images/default_avatar.png") as ImageProvider,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 16,
                    child: const Icon(Icons.camera_alt, size: 18, color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Name Field
              TextField(
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                controller: TextEditingController(text: user.displayName),
                readOnly: true,
              ),
              const SizedBox(height: 16),
              // Email Field
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                controller: TextEditingController(text: user.email),
                readOnly: true,
              ),
              const SizedBox(height: 16),
              // Date of Birth Field
              TextField(
                decoration: InputDecoration(
                  labelText: "Date of Birth",
                  suffixIcon: const Icon(Icons.calendar_today),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                controller: TextEditingController(text: user.dateOfBirth),
                readOnly: true,
              ),
              const SizedBox(height: 20),
              // Log Out Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    await loginViewModel.signOut();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text("Log Out", style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
