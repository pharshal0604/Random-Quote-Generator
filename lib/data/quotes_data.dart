import '../models/quote.dart';

final List<Quote> allQuotes = [
  // Motivation Category
  Quote(
    id: '1',
    content:
        'Success is not final, failure is not fatal: it is the courage to continue that counts.',
    author: 'Winston Churchill',
    category: 'Motivation',
  ),
  Quote(
    id: '2',
    content: 'The future depends on what you do today.',
    author: 'Mahatma Gandhi',
    category: 'Motivation',
  ),
  Quote(
    id: '3',
    content: 'The only way to do great work is to love what you do.',
    author: 'Steve Jobs',
    category: 'Motivation',
  ),
  Quote(
    id: '4',
    content: 'Believe you can and you\'re halfway there.',
    author: 'Theodore Roosevelt',
    category: 'Motivation',
  ),
  Quote(
    id: '5',
    content: 'Don\'t watch the clock; do what it does. Keep going.',
    author: 'Sam Levenson',
    category: 'Motivation',
  ),

  // Success Category
  Quote(
    id: '6',
    content:
        'Success usually comes to those who are too busy to be looking for it.',
    author: 'Henry David Thoreau',
    category: 'Success',
  ),
  Quote(
    id: '7',
    content:
        'The road to success and the road to failure are almost exactly the same.',
    author: 'Colin R. Davis',
    category: 'Success',
  ),
  Quote(
    id: '8',
    content:
        'Success is not the key to happiness. Happiness is the key to success.',
    author: 'Albert Schweitzer',
    category: 'Success',
  ),
  Quote(
    id: '9',
    content:
        'There are no secrets to success. It is the result of preparation, hard work, and learning from failure.',
    author: 'Colin Powell',
    category: 'Success',
  ),
  Quote(
    id: '10',
    content: 'Success is not in what you have, but who you are.',
    author: 'Bo Bennett',
    category: 'Success',
  ),

  // Life Category
  Quote(
    id: '11',
    content: 'Life is what happens while you\'re busy making other plans.',
    author: 'John Lennon',
    category: 'Life',
  ),
  Quote(
    id: '12',
    content: 'Life is really simple, but we insist on making it complicated.',
    author: 'Confucius',
    category: 'Life',
  ),
  Quote(
    id: '13',
    content: 'Life is 10% what happens to you and 90% how you react to it.',
    author: 'Charles R. Swindoll',
    category: 'Life',
  ),
  Quote(
    id: '14',
    content: 'The purpose of our lives is to be happy.',
    author: 'Dalai Lama',
    category: 'Life',
  ),
  Quote(
    id: '15',
    content: 'Life is either a daring adventure or nothing at all.',
    author: 'Helen Keller',
    category: 'Life',
  ),

  // Wisdom Category
  Quote(
    id: '16',
    content: 'The only true wisdom is in knowing you know nothing.',
    author: 'Socrates',
    category: 'Wisdom',
  ),
  Quote(
    id: '17',
    content:
        'Wisdom comes from experience, and experience comes from mistakes.',
    author: 'Oscar Wilde',
    category: 'Wisdom',
  ),
  Quote(
    id: '18',
    content: 'The more I learn, the more I realize how much I don\'t know.',
    author: 'Albert Einstein',
    category: 'Wisdom',
  ),
  Quote(
    id: '19',
    content: 'Knowledge speaks, but wisdom listens.',
    author: 'Jimi Hendrix',
    category: 'Wisdom',
  ),
  Quote(
    id: '20',
    content: 'The journey of a thousand miles begins with one step.',
    author: 'Lao Tzu',
    category: 'Wisdom',
  ),

  // Leadership Category
  Quote(
    id: '21',
    content:
        'A leader is one who knows the way, goes the way, and shows the way.',
    author: 'John C. Maxwell',
    category: 'Leadership',
  ),
  Quote(
    id: '22',
    content:
        'Leadership is not about being in charge. It\'s about taking care of those in your charge.',
    author: 'Simon Sinek',
    category: 'Leadership',
  ),
  Quote(
    id: '23',
    content:
        'The greatest leader is not necessarily the one who does the greatest things. He is the one that gets people to do the greatest things.',
    author: 'Ronald Reagan',
    category: 'Leadership',
  ),
  Quote(
    id: '24',
    content: 'Leadership and learning are indispensable to each other.',
    author: 'John F. Kennedy',
    category: 'Leadership',
  ),
  Quote(
    id: '25',
    content: 'Innovation distinguishes between a leader and a follower.',
    author: 'Steve Jobs',
    category: 'Leadership',
  ),
];

final List<String> categories = [
  'All',
  'Motivation',
  'Success',
  'Life',
  'Wisdom',
  'Leadership',
];
