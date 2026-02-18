import 'package:flutter/material.dart';
import 'widgets/book_header.dart';
import 'widgets/book_info_section.dart';
import 'widgets/bottom_cart_bar.dart';

class BookDetailPage extends StatelessWidget {
  const BookDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: const [
          BookHeader(),
          BookInfoSection(),
        ],
      ),
      bottomNavigationBar: const BottomCartBar(),
    );
  }
}
