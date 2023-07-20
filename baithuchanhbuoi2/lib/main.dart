import 'package:baithuchanhbuoi2/ImageDetailScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 5, 94, 167)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _showImageDetailScreen(String imagePath, String detail) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImageDetailScreen(
          imagePath: imagePath,
          detail: detail,
        ),
      ),
    );
  }

  final Map<String, String> imageDetails = {
    'assets/images/dart.png': 'Đây là hình ảnh Dart',
    'assets/images/png.png': 'Đây là hình ảnh PNG',
    'assets/images/android.png': 'Đây là hình ảnh Android',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 45),
            const Text(
              'HOME SCREEN',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  color: Colors.blue,
                ),
                Container(
                  width: 90,
                  height: 90,
                  color: Colors.green,
                ),
                Container(
                  width: 90,
                  height: 90,
                  color: Colors.yellow,
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 200,
              height: 80,
              child: GestureDetector(
                onTap: () => _showImageDetailScreen(
                  'assets/images/dart.png',
                  imageDetails['assets/images/dart.png']!,
                ),
                child: Image.asset("assets/images/dart.png"),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 200,
              height: 80,
              child: GestureDetector(
                onTap: () => _showImageDetailScreen(
                  'assets/images/png.png',
                  imageDetails['assets/images/png.png']!,
                ),
                child: Image.asset("assets/images/png.png"),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 200,
              height: 80,
              child: GestureDetector(
                onTap: () => _showImageDetailScreen(
                  'assets/images/android.png',
                  imageDetails['assets/images/android.png']!,
                ),
                child: Image.asset("assets/images/android.png"),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5), // Đặt độ cong bo tròn cho nút (ví dụ 10 pixels)
                ),
              ),
              child: const Text(
                'Click here !!',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
