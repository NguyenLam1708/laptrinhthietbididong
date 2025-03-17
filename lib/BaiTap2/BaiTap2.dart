import 'package:flutter/material.dart';

void main() {
  runApp(const BaiTap2());
}

class BaiTap2 extends StatelessWidget {
  const BaiTap2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.png', // Đảm bảo có ảnh logo trong thư mục assets
                  width: 150,
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewScreen()),
                    );
                  },
                  child: Text(
                    "UTH SmartTasks",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Text(
              "",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Easy Time Management"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thêm hình ảnh vào đây
            Center(
              child: Image.asset(
                'assets/time_management.png', // Đảm bảo có ảnh trong thư mục assets
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            // Căn giữa văn bản "Easy Time Management"
            Center(
              child: Text(
                "Easy Time Management",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Căn giữa và căn đều văn bản
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "With management based on priority and daily tasks, it will give you convenience in managing and determining the tasks that must be done first.",
                  textAlign: TextAlign.center, // Căn giữa văn bản
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Spacer(),
            // Tạo nút NEXT màu xanh và to
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WorkEffectivenessScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Màu nền xanh
                  padding: EdgeInsets.symmetric(horizontal:100, vertical: 15), // Kích thước nút
                  textStyle: TextStyle(
                    fontSize: 18, // Kích thước chữ
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text("NEXT"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WorkEffectivenessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Increase Work Effectiveness"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thêm hình ảnh vào đây
            Center(
              child: Image.asset(
                'assets/work_effectiveness.png', // Đảm bảo có ảnh trong thư mục assets
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            // Căn giữa văn bản "Increase Work Effectiveness"
            Center(
              child: Text(
                "Increase Work Effectiveness",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Căn giữa và căn đều văn bản
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Time management and the determination of more important tasks will give your job statistics better and always improve.",
                  textAlign: TextAlign.center, // Căn giữa văn bản
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Spacer(),
            // Tạo nút NEXT màu xanh và to
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReminderNotificationScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Màu nền xanh
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15), // Kích thước nút
                  textStyle: TextStyle(
                    fontSize: 18, // Kích thước chữ
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text("NEXT"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReminderNotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reminder Notification"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thêm hình ảnh vào đây
            Center(
              child: Image.asset(
                'assets/reminder_notification.png', // Đảm bảo có ảnh trong thư mục assets
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            // Căn giữa văn bản "Reminder Notification"
            Center(
              child: Text(
                "Reminder Notification",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Căn giữa và căn đều văn bản
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "The advantage of this application is that it also provides reminders for you so you don’t forget to keep doing your assignments well and according to the time you have set.",
                  textAlign: TextAlign.center, // Căn giữa văn bản
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Spacer(),
            // Tạo nút GET STARTED màu xanh và to
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Thêm hành động khi nhấn nút GET STARTED
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Màu nền xanh
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15), // Kích thước nút
                  textStyle: TextStyle(
                    fontSize: 18, // Kích thước chữ
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text("GET STARTED"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}