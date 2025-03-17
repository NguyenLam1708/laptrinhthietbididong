import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(
              'assets/onboarding_image.png', // Thay thế bằng đường dẫn ảnh phù hợp
              width: 250,
            ),
            const SizedBox(height: 20),
            Text(
              "Easy Time Management",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "With management based on priority and daily tasks, it will give you convenience in managing and determining the tasks that must be done first.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.circle, size: 8, color: Colors.blue),
                    SizedBox(width: 5),
                    Icon(Icons.circle, size: 8, color: Colors.grey),
                    SizedBox(width: 5),
                    Icon(Icons.circle, size: 8, color: Colors.grey),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // Chuyển sang trang chính hoặc bỏ qua
                  },
                  child: Text("skip", style: TextStyle(color: Colors.blue)),
                )
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Điều hướng đến trang tiếp theo
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 12),
              ),
              child: Text(
                "NEXT",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
