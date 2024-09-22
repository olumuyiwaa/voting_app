import 'package:flutter/material.dart';

class VoteCard extends StatefulWidget {
  final String name;
  final String details;
  final int count;
  const VoteCard(
      {super.key,
      required this.name,
      required this.details,
      required this.count});

  @override
  State<VoteCard> createState() => _VoteCardState();
}

class _VoteCardState extends State<VoteCard> {
  final circle = Container(
      height: 28,
      width: 28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue,
      ));

  bool _isVisible = false;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: GestureDetector(
        onTap: () {
          _toggleVisibility();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.blueGrey,
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  circle,
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.name,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      IconButton(
                          icon: Icon(
                              _isVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.white),
                          onPressed: () {
                            _toggleVisibility();
                          }),
                    ],
                  ))
                ],
              ),
              _isVisible
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 14,
                        ),
                        Text('Details: ${widget.details}',
                            style: const TextStyle(color: Colors.white)),
                        const SizedBox(
                          height: 8,
                        ),
                        Text('Votes: ${widget.count}',
                            style: const TextStyle(color: Colors.white)),
                        const SizedBox(
                          height: 8,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                          onPressed: () {},
                          child: const Text('Vote'),
                        ),
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
