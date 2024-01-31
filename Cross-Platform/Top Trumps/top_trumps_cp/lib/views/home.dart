library toptrumps.views;

import 'package:bloc_implementation/bloc_implementation.dart' show BlocParent;
import 'package:flutter/material.dart';
import 'package:string_translate/string_translate.dart' show Translate;
import 'package:top_trumps_cp/blocs/home_bloc.dart';
import 'package:top_trumps_cp/models/deck.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

final class _HomeState extends State<Home> {
  late HomeBloc? _bloc;

  @override
  Widget build(BuildContext context) {
    _bloc ?? BlocParent.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome".tr()),
      ),
      body: ListView.builder(
        itemCount: _bloc!.decks.length,
        itemBuilder: (_, int i) {
          return _buildDeckContainer(_bloc!.decks[i]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Widget _buildDeckContainer(Deck deck) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 1.5,
      width: size.width - 100,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: [Text(deck.name), Text(deck.cards.length.toString())],
        ),
      ),
    );
  }
}
