import 'package:flutter/material.dart';
import 'widgets/header_bar.dart';
import 'widgets/search_bar.dart';
import 'widgets/promo_banner.dart';
import 'widgets/category_chip_list.dart';
import 'widgets/section_header.dart';
import 'widgets/book_card.dart';
import 'widgets/author_avatar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 10),
              HeaderBar(),
              SizedBox(height: 20),
              SearchBarWidget(),
              SizedBox(height: 20),
              PromoBanner(),
              SizedBox(height: 20),
              CategoryChipList(),
              SizedBox(height: 20),
              SectionHeader(title: "Best seller"),
              SizedBox(height: 12),
              BookHorizontalList(),
              SizedBox(height: 20),
              SectionHeader(title: "Authors"),
              SizedBox(height: 12),
              AuthorHorizontalList(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
