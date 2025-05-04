import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/quote_controller.dart';
import '../controllers/theme_controller.dart';
import '../widgets/quote_card.dart';
import '../widgets/category_slider.dart';
import '../data/sample_quotes.dart'; // Add this import

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Provider.of<ThemeController>(context);
    final quoteController = Provider.of<QuoteController>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        title: TextField(
          onChanged: (value) => quoteController.setSearchQuery(value),
          decoration: InputDecoration(
            hintText: 'Search quotes...',
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor:
                Theme.of(
                  context,
                ).colorScheme.surfaceContainerHighest, // Updated this line
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              themeController.isDark ? Icons.light_mode : Icons.dark_mode,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            onPressed: themeController.toggleTheme,
          ),
        ],
      ),
      body: Column(
        children: [
          CategorySlider(
            categories: categories,
            onCategorySelected: quoteController.setCategory,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: quoteController.filteredQuotes.length,
              itemBuilder: (context, index) {
                final quote = quoteController.filteredQuotes[index];
                return QuoteCard(quote: quote);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final randomQuote = quoteController.getRandomQuote();
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(randomQuote.content)));
        },
        child: const Icon(Icons.shuffle),
      ),
    );
  }
}
