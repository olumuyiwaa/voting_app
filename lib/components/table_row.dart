import 'package:flutter/material.dart';
import '../pages/vote_page.dart';

class MyRow extends StatelessWidget {
  final String date;
  final int count;
  final String title;

  const MyRow(
      {super.key,
      required this.date,
      required this.count,
      required this.title});
  final tableStyle = const TextStyle(color: Colors.white, fontSize: 14);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        onTap: () {
          Navigator.push(
              context,
              // ignore: prefer_const_constructors
              MaterialPageRoute(builder: (BuildContext context) => VotePage()));
        },
        tileColor: Colors.blueGrey,
        leading: SizedBox(
          width: 120,
          child: Text(
            title,
            style: tableStyle,
          ),
        ),
        title: SizedBox(
          width: 44,
          child: Text(
            count.toString(),
            style: tableStyle,
          ),
        ),
        trailing: SizedBox(
          width: 100,
          child: Text(
            date.toString(),
            style: tableStyle,
          ),
        ),
      ),
    );
  }
}
