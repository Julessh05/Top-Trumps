library toptrumps.models;

import 'dart:ui';

import 'card.dart';

final class Deck {
  final String name;

  final List<Card> cards;

  final Image cover;

  final String description;

  const Deck(
    this.name,
    this.cards,
    this.cover,
    this.description,
  );
}
