class Book {
  String author;
  String genre;
  double price;
  String language;
  int pages;
  String summary;
  String review;

  Book({
    required this.author,
    required this.genre,
    required this.price,
    required this.language,
    required this.pages,
    required this.summary,
    required this.review,
  });

  Map<String, dynamic> toMap() {
    return {
      'author': author,
      'genre': genre,
      'price': price,
      'language': language,
      'pages': pages,
      'summary': summary,
      'review': review,
    };
  }
}
