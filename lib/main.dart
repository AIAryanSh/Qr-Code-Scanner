import 'package:flutter/material.dart';
import 'package:qr_scanner/generate_qr_code.dart';
import 'package:qr_scanner/scan_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Scaneer and Generator',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 162, 225, 164),
      appBar: AppBar(
        title: Text(
          "QR Code Scanner and Generator",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 40, 118, 42),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(builder:(context) => ScanQRCode()));
                });
              },
              child: Text("Scan QR code"),
            ),
            SizedBox(height: 40),
            
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder:(context) => GenerateQRCode()));
            }, child: Text("Generate QR Code"))
          ],
        ),
      ),
    );
  }
}
