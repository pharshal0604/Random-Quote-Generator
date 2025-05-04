import 'package:flutter/foundation.dart';
import '../models/quote.dart';
import '../data/quotes_data.dart'; // Changed from sample_quotes.dart

class QuoteController extends ChangeNotifier {
  final List<Quote> _quotes = [...allQuotes]; // Changed from sampleQuotes
  String _selectedCategory = 'All';
  String _searchQuery = '';

  List<Quote> get quotes => List.unmodifiable(_quotes);
  String get selectedCategory => _selectedCategory;
  String get searchQuery => _searchQuery;

  void addQuote(String content, {String category = 'General'}) {
    final quote = Quote(
      id: DateTime.now().toString(),
      content: content,
      author: "You",
      category: category,
    );
    _quotes.add(quote);
    notifyListeners();
  }

  void toggleFavorite(String id) {
    final index = _quotes.indexWhere((q) => q.id == id);
    if (index != -1) {
      _quotes[index] = _quotes[index].copyWith(
        isFavorite: !_quotes[index].isFavorite,
      );
      notifyListeners();
    }
  }

  void setCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  List<Quote> get filteredQuotes {
    return _quotes.where((quote) {
      final matchesCategory =
          _selectedCategory == 'All' || quote.category == _selectedCategory;
      final matchesSearch =
          quote.content.toLowerCase().contains(_searchQuery.toLowerCase()) ||
          quote.author.toLowerCase().contains(_searchQuery.toLowerCase());
      return matchesCategory && matchesSearch;
    }).toList();
  }

  Quote getRandomQuote() {
    final filtered = filteredQuotes;
    if (filtered.isEmpty) return _quotes[0];
    return filtered[DateTime.now().millisecondsSinceEpoch % filtered.length];
  }
}
