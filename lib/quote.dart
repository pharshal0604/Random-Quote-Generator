class Quote {
  final String id;
  final String content;
  final String author;
  final String category;
  bool isFavorite;

  Quote({
    required this.id,
    required this.content,
    required this.author,
    required this.category,
    this.isFavorite = false,
  });

  Quote copyWith({bool? isFavorite}) {
    return Quote(
      id: id,
      content: content,
      author: author,
      category: category,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
