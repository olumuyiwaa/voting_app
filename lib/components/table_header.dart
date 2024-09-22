import 'package:flutter/material.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({super.key});

  final headerstyle = const TextStyle(
      fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12);
  @override
  Widget build(BuildContext context) {
    return ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        tileColor: Colors.blueGrey.shade900,
        leading: SizedBox(
          width: 120,
          child: Text(
            'Competition\nName',
            style: headerstyle,
          ),
        ),
        title: SizedBox(
          width: 44,
          child: Text(
            'Vote\nCount',
            style: headerstyle,
          ),
        ),
        trailing: SizedBox(
          width: 100,
          child: Text(
            'Closing\nDate',
            style: headerstyle,
          ),
        ));
  }
}
