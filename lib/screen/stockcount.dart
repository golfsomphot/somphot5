import 'package:flutter/material.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class Stockcount extends StatefulWidget {
  const Stockcount({super.key});

  @override
  State<Stockcount> createState() => _StockcountState();
}

class _StockcountState extends State<Stockcount> {
  String _scanResult = 'Scan result will be displayed here';

  // Future<void> scanBarcode() async {
  //   try {
  //     final result = await FlutterBarcodeScanner.scanBarcode(
  //       '#ff6666', // สีของปุ่มปิดการสแกน
  //       'Cancel', // ข้อความที่แสดงในปุ่มยกเลิก
  //       true, // ถ้าต้องการให้มีแฟลชกล้อง
  //       ScanMode.BARCODE, // ใช้โหมดสแกนบาร์โค้ด
  //     );
  //     if (!mounted) return;

  //     setState(() {
  //       _scanResult = result;
  //     });
  //   } catch (e) {
  //     setState(() {
  //       _scanResult = 'Failed to get scan result: $e';
  //       print(_scanResult);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Stockcount',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_scanResult),
            SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: scanBarcode,
            //   child: Text('Start Barcode Scan'),
            // ),
          ],
        ),
      ),
    );
  }
}
