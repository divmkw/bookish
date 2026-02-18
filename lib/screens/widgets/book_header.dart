import 'dart:ui';
import 'package:flutter/material.dart';

class BookHeader extends StatelessWidget {
  const BookHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: width * 0.9,
      child: Stack(
        children: [
          /// Background Image
          Positioned.fill(
            child: Image.network(
              "https://picsum.photos/600/800",
              fit: BoxFit.cover,
            ),
          ),

          /// Blur Effect
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(color: Colors.black.withOpacity(0.2)),
            ),
          ),

          /// App Bar Icons
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: const [
                  Icon(Icons.arrow_back, color: Colors.white),
                  Spacer(),
                  Icon(Icons.shopping_cart_outlined,
                      color: Colors.white),
                ],
              ),
            ),
          ),

          /// Center Book Cover
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: width * 0.4,
              height: width * 0.6,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://picsum.photos/300"),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(0.4),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
