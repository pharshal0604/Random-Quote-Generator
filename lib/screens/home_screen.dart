import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/quote_controller.dart';
import '../widgets/quote_card.dart';
import '../widgets/category_slider.dart';
import '../data/sample_quotes.dart';
import '../widgets/search_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quoteController = Provider.of<QuoteController>(context);

    return Scaffold(
      appBar: const SearchAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            CategorySlider(
              categories: categories,
              onCategorySelected: quoteController.setCategory,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: quoteController.filteredQuotes.length,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemBuilder: (context, index) {
                  final quote = quoteController.filteredQuotes[index];
                  return QuoteCard(quote: quote);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: FloatingActionButton(
          onPressed: () {
            final randomQuote = quoteController.getRandomQuote();
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(randomQuote.content)));
          },
          child: const Icon(Icons.shuffle),
        ),
      ),
    );
  }
}
