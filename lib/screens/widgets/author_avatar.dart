import 'package:flutter/material.dart';

class AuthorHorizontalList extends StatelessWidget {
  const AuthorHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (_, index) => const AuthorAvatar(),
      ),
    );
  }
}

class AuthorAvatar extends StatelessWidget {
  const AuthorAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage:
                NetworkImage("https://picsum.photos/100"),
          ),
          const SizedBox(height: 6),
          const Text(
            "Author",
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
