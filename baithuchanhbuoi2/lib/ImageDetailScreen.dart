import 'package:flutter/material.dart';

class ImageDetailScreen extends StatelessWidget {
  final String imagePath;
  final String detail;

  ImageDetailScreen({required this.imagePath, required this.detail});

  @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Chi tiết hình ảnh'),
      backgroundColor: Colors.blue, // Sử dụng Colors.blue thay vì Color.blue
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath),
            SizedBox(height: 20),
            Text(detail),
          ],
        ),
      ),
    );
  }
}
