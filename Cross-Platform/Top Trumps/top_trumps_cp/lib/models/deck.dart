library toptrumps.models;

import 'card.dart';

final class Deck {
  final String name;

  final List<Card> cards;

  const Deck(this.name, this.cards);
}
