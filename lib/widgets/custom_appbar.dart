import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 50,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          // LinearGradient
          gradient: LinearGradient(
            // colors for gradient
            colors: [
              Colors.deepOrange,
              Colors.deepOrange,
              Colors.orange,
              Colors.yellowAccent,
            ],
          ),
        ),
      ),
      // title of appbar
      title: const Text(
        "Test",
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        const Icon(
          Icons.notifications,
          size: 30,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            padding:
                const EdgeInsets.only(top: 10, right: 16, left: 16, bottom: 10),
            child: const Text(
              "SOS",
            )),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
