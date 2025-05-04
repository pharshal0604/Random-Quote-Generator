import '../models/quote.dart';

final List<String> categories = [
  'All',
  'Motivation',
  'Life',
  'Success',
  'Love',
  'Wisdom',
];

final List<Quote> sampleQuotes = [
  // Motivation Category
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
    content: "Don't watch the clock; do what it does. Keep going.",
    author: "Sam Levenson",
    category: "Motivation",
  ),
  Quote(
    id: '4',
    content: "Believe you can and you're halfway there.",
    author: "Theodore Roosevelt",
    category: "Motivation",
  ),
  Quote(
    id: '5',
    content:
        "The future belongs to those who believe in the beauty of their dreams.",
    author: "Eleanor Roosevelt",
    category: "Motivation",
  ),

  // Life Category
  Quote(
    id: '6',
    content: "Life is what happens while you're busy making other plans.",
    author: "John Lennon",
    category: "Life",
  ),
  // Add 4 more Life quotes...

  // Success Category
  Quote(
    id: '11',
    content:
        "Success is not the key to happiness. Happiness is the key to success.",
    author: "Albert Schweitzer",
    category: "Success",
  ),
  // Add 4 more Success quotes...

  // Love Category
  Quote(
    id: '16',
    content: "Love all, trust a few, do wrong to none.",
    author: "William Shakespeare",
    category: "Love",
  ),
  // Add 4 more Love quotes...

  // Wisdom Category
  Quote(
    id: '21',
    content: "The only true wisdom is in knowing you know nothing.",
    author: "Socrates",
    category: "Wisdom",
  ),
  // Add 4 more Wisdom quotes...
];
