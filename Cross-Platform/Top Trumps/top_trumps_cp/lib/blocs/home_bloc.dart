library toptrumps.blocs;

import 'package:bloc_implementation/bloc_implementation.dart';
import 'package:top_trumps_cp/models/deck.dart';

final class HomeBloc extends Bloc {
  List<Deck> decks = [];

  @override
  void dispose() {}
}
