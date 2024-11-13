import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  final List<dynamic> data;
  final Widget Function(dynamic item) itemBuilder;

  const CustomListView({
    Key? key,
    required this.data,
    required this.itemBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];
        return itemBuilder(item);
      },
    );
  }
}
