import 'package:flutter/material.dart';

import '../components/vote_card.dart';

class VotePage extends StatelessWidget {
  const VotePage({super.key});
  final h1 = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.w500, color: Colors.blueAccent);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.blueAccent),
        backgroundColor: const Color.fromARGB(255, 17, 23, 40),
      ),
      body: Scaffold(
        backgroundColor: const Color.fromARGB(255, 17, 23, 40),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
          children: [
            Text('Competition Title', style: h1),
            const SizedBox(
              height: 8,
            ),
            Text('Number of Vote(s): count', style: h1),
            const SizedBox(
              height: 8,
            ),
            Text('Clossing Date: dd/mm/yyyy', style: h1),
            const SizedBox(
              height: 24,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const VoteCard(
                    name: 'name of nominee',
                    details: 'details about the nominee',
                    count: 10,
                  );
                })
          ],
        ),
      ),
    );
  }
}
