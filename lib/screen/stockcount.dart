import 'package:flutter/material.dart';
import 'package:somphot5/widget/customlistview.dart';

class Stockcount extends StatefulWidget {
  const Stockcount({super.key});

  @override
  State<Stockcount> createState() => _StockcountState();
}

class _StockcountState extends State<Stockcount> {
  // ตัวอย่างข้อมูลสำหรับ ListView
  final List<String> items = ['Item 1', 'Item 2', 'Item 3'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stock Count')),
        body: CustomListView(
          data: items,
          itemBuilder: (item) {
            return ListTile(
              title: Text(item), // แสดงชื่อของแต่ละรายการ
            );
          },
        ),
      ),
    );
  }
}
