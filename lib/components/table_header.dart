import 'package:flutter/material.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({super.key});

  final headerstyle =
      const TextStyle(fontWeight: FontWeight.bold, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.blueGrey.shade900,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              'Competition\nName',
              style: headerstyle,
            ),
          ),
          SizedBox(
            width: 44,
            child: Text(
              'Vote\nCount',
              style: headerstyle,
            ),
          ),
          SizedBox(
            width: 100,
            child: Text(
              'Closing\nDate',
              style: headerstyle,
            ),
          )
        ],
      ),
    );
  }
}
