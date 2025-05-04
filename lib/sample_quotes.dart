import '../models/quote.dart';

final List<Quote> sampleQuotes = [
  Quote(
    id: '1',
    content:
        "Success is not final, failure is not fatal: it is the courage to continue that counts.",
    author: "Winston Churchill",
    category: "Motivation",
  ),
  Quote(
    id: '2',
    content: "The only way to do great work is to love what you do.",
    author: "Steve Jobs",
    category: "Motivation",
  ),
  Quote(
    id: '3',
    content: "Life is what happens when you're busy making other plans.",
    author: "John Lennon",
    category: "Life",
  ),
  Quote(
    id: '4',
    content:
        "Success usually comes to those who are too busy to be looking for it.",
    author: "Henry David Thoreau",
    category: "Success",
  ),
  Quote(
    id: '5',
    content: "Love all, trust a few, do wrong to none.",
    author: "William Shakespeare",
    category: "Love",
  ),
];

final List<String> categories = [
  'All',
  'Motivation',
  'Life',
  'Success',
  'Love',
];
