import 'package:flutter/material.dart';
import '../components/table_header.dart';
import '../components/table_row.dart';

class VoteHome extends StatelessWidget {
  const VoteHome({super.key});
  final h1 = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.w600, color: Colors.blueAccent);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 17, 23, 40),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 17, 23, 40),
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
          children: [
            Text(
              'Trending Competitions:',
              style: h1,
            ),
            const SizedBox(height: 12),
            Column(
              children: [
                const TableHeader(),
                const SizedBox(height: 8),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return const MyRow();
                      }),
                ),
              ],
            ),
            Text(
              'Other Competitions:',
              style: h1,
            ),
            const SizedBox(height: 12),
            Column(
              children: [
                const TableHeader(),
                const SizedBox(height: 8),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const MyRow();
                      }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
