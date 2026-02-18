import 'package:flutter/material.dart';
import 'expandable_text.dart';
import 'review_tile.dart';

class BookInfoSection extends StatelessWidget {
  const BookInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return DraggableScrollableSheet(
      initialChildSize: 0.55,
      minChildSize: 0.55,
      maxChildSize: 0.9,
      builder: (context, controller) {
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: SingleChildScrollView(
            controller: controller,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "The Monk Who Sold His Ferrari",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),

                /// Rating Row
                Row(
                  children: const [
                    Icon(Icons.star,
                        color: Colors.orange, size: 18),
                    Icon(Icons.star,
                        color: Colors.orange, size: 18),
                    Icon(Icons.star,
                        color: Colors.orange, size: 18),
                    Icon(Icons.star,
                        color: Colors.orange, size: 18),
                    Icon(Icons.star_half,
                        color: Colors.orange, size: 18),
                    SizedBox(width: 6),
                    Text("4,847 Reviews",
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),

                const SizedBox(height: 10),

                /// Price
                Row(
                  children: const [
                    Text(
                      "\$23.49",
                      style: TextStyle(
                        decoration:
                            TextDecoration.lineThrough,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "\$16.20",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                /// Meta Data
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: const [
                    _MetaItem("AUTHOR", "Robin Sharma"),
                    _MetaItem("GENRE", "LifeStyle"),
                    _MetaItem("LANGUAGE", "English"),
                    _MetaItem("PAGES", "216"),
                  ],
                ),

                const SizedBox(height: 20),

                const Text("Summary",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),

                const SizedBox(height: 8),

                const ExpandableText(
                  text:
                      "A renowned inspirational fiction, The Monk Who Sold His Ferrari is a revealing story...",
                ),

                const SizedBox(height: 20),

                const Text("Reviews",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),

                const SizedBox(height: 10),

                const ReviewTile(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _MetaItem extends StatelessWidget {
  final String title;
  final String value;

  const _MetaItem(this.title, this.value);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title,
            style: const TextStyle(
                fontSize: 10, color: Colors.grey)),
        const SizedBox(height: 4),
        Text(value,
            style: const TextStyle(
                fontWeight: FontWeight.w500)),
      ],
    );
  }
}
