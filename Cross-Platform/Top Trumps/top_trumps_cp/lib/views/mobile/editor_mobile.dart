library toptrumps.mobileviews;

import 'package:flutter/material.dart';
import 'package:string_translate/string_translate.dart' show Translate;
import 'package:top_trumps_cp/models/deck.dart';

final class EditorMobile extends StatefulWidget {
  const EditorMobile({super.key, required this.deck});

  final Deck deck;

  @override
  State<EditorMobile> createState() => _EditorMobileState();
}

final class _EditorMobileState extends State<EditorMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit".tr()),
      ),
    );
  }
}
