import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import '../controllers/quote_controller.dart';
import '../models/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;

  const QuoteCard({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    final quoteController = Provider.of<QuoteController>(context);

    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(quote.content, style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 8),
            Text(
              '- ${quote.author}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    quote.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () => quoteController.toggleFavorite(quote.id),
                ),
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () => Share.share(quote.content),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
