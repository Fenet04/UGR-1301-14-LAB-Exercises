import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {

  await Future.delayed(Duration(seconds: 2)); 

  List<String> quotes = [
    "Exercitation ex ullamco ex irure non et laborum.",
    "Culpa ad veniam sint non sunt labore nulla mollit quis ea ex minim nisi.",
    "Magna ea consectetur cillum et nisi excepteur aliqua excepteur non sunt et qui ad incididunt.",
    "Labore deserunt elit aliquip ad nulla nulla aute quis aute laborum aute voluptate.",
    "Non eu aliqua consectetur adipisicing Lorem veniam ut officia exercitation do reprehenderit incididunt ullamco et."
  ];

  int randomIndex = Random().nextInt(quotes.length);

  return quotes[randomIndex];
}

void main() async {
  
  String quote = await fetchRandomQuote();
  print("Random Quote: $quote");
}
