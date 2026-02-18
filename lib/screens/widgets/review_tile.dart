import 'package:flutter/material.dart';

class ReviewTile extends StatelessWidget {
  final String reviewerName;
  final String reviewerImage;
  final String reviewText;
  final double rating;
  final String date;

  const ReviewTile({
    super.key,
    this.reviewerName = "John Mack",
    this.reviewerImage = "https://picsum.photos/100",
    this.reviewText =
        "An inspiring and motivating book. It really changed my mindset and helped me rethink life priorities.",
    this.rating = 4.5,
    this.date = "16 November 2023",
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Avatar
          CircleAvatar(
            radius: width * 0.06,
            backgroundImage: NetworkImage(reviewerImage),
          ),

          const SizedBox(width: 12),

          /// Review Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Name + Date
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        reviewerName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                /// Rating
                Row(
                  children: List.generate(
                    5,
                    (index) => Icon(
                      index < rating.floor()
                          ? Icons.star
                          : Icons.star_border,
                      size: 16,
                      color: Colors.orange,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                /// Review Text
                Text(
                  reviewText,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
