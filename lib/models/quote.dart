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

  Quote copyWith({
    String? id,
    String? content,
    String? author,
    String? category,
    bool? isFavorite,
  }) {
    return Quote(
      id: id ?? this.id,
      content: content ?? this.content,
      author: author ?? this.author,
      category: category ?? this.category,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
