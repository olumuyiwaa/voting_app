import 'package:flutter/material.dart';
import '../pages/vote_page.dart';

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.blueGrey,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 100,
              child: Text(
                'Title',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              width: 44,
              child: Text(
                'count',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              width: 100,
              child: Text(
                'dd/mm/yyyy',
                style: TextStyle(color: Colors.white),
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
    );
  }
}
