import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({Key? key}) : super(key: key);

  @override
  State<GenerateQRCode> createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {
  TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 162, 225, 164),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 118, 42),
        title: Text("Generate QR Code"),
      ),
      body: Center(
        child: SingleChildScrollView(
          //padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (urlController.text.isNotEmpty)
                QrImageView(data: urlController.text, size: 200),

              SizedBox(height: 10),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: urlController,
                  decoration: InputDecoration(
                    hintText: "Enter the Information",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Enter the Information",
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              ElevatedButton(
                onPressed: () {},
                child: Text("Generate QR Code"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
