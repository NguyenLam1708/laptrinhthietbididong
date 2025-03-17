import 'package:flutter/material.dart';

class TextDetailScreen extends StatelessWidget {
  const TextDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Text Detail',
          style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "The ", style: TextStyle(fontSize: 20)),
                      TextSpan(
                        text: "quick ",
                        style: TextStyle(fontSize: 20, decoration: TextDecoration.lineThrough),
                      ),
                      TextSpan(
                        text: "Brown",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.brown),
                      ),
                      TextSpan(text: "\nfox j u m p s ", style: TextStyle(fontSize: 20)),
                      TextSpan(
                        text: "over",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                      ),
                      TextSpan(text: "\n the ", style: TextStyle(fontSize: 20)),
                      TextSpan(
                        text: "lazy",
                        style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic, decoration: TextDecoration.underline),
                      ),
                      TextSpan(text: " dog.", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  height: 1.5,
                  color: Colors.black26,
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
