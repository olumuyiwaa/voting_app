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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: GestureDetector(
        child: Container(
          color: Colors.blueGrey,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 44,
                child: Text(
                  count.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 100,
                child: Text(
                  date.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              // ignore: prefer_const_constructors
              MaterialPageRoute(builder: (BuildContext context) => VotePage()));
        },
      ),
    );
  }
}
