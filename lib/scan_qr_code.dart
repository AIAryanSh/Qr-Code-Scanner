import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanQRCode extends StatefulWidget {
  const ScanQRCode({super.key});

  @override
  State<ScanQRCode> createState() => _ScanQRCodeState();
}

class _ScanQRCodeState extends State<ScanQRCode> {
  String qrResult = "Scanned data Will App ear Here"; 
  Future<void> scanQR()async{
    try{
      final qrCode = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.QR);
      if(!mounted) return;
      setState(() {
        this.qrResult = qrCode.toString();
      });
    } on PlatformException{
      qrResult = "Failed to get QR CODE";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 162, 225, 164),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 118, 42),
        title: Text("QR Code Scanner")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),

            Text('$qrResult', style: TextStyle(color: Colors.white)),
            SizedBox(height: 30,), 
            ElevatedButton(onPressed: scanQR, child: Text("Scan Code"),),
          ],
        ),
      ),
    );
  }
}