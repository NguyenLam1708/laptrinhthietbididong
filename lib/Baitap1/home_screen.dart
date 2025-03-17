import 'package:flutter/material.dart';
import 'TextDetailScreen.dart'; // Import trang chi tiết

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Components List', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle('Display'),
              _buildCard('Text', 'Displays text', context),
              _buildCard('Image', 'Displays an image', context),

              _buildSectionTitle('Input'),
              _buildCard('TextField', 'Input field for text', context), // Thêm sự kiện nhấn vào đây
              _buildCard('PasswordField', 'Input field for passwords', context),

              _buildSectionTitle('Layout'),
              _buildCard('Column', 'Arranges elements vertically', context),
              _buildCard('Row', 'Arranges elements horizontally', context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 6),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildCard(String title, String description, BuildContext context) {
    return Card(
      color: Colors.blue.shade100,
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        onTap: () {
          if (title == "TextField") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TextDetailScreen()),
            );
          }
        },
      ),
    );
  }
}
