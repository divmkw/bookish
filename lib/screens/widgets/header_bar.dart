import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.menu),
        const SizedBox(width: 16),
        const Text(
          "Hello Reader!",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        const CircleAvatar(
          radius: 18,
          backgroundColor: Colors.grey,
        )
      ],
    );
  }
}
