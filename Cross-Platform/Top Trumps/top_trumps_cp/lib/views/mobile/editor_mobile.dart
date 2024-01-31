library toptrumps.mobileviews;

import 'package:flutter/material.dart';
import 'package:string_translate/string_translate.dart' show Translate;

class EditorMobile extends StatefulWidget {
  const EditorMobile({super.key});

  @override
  State<EditorMobile> createState() => _EditorMobileState();
}

class _EditorMobileState extends State<EditorMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit".tr()),
      ),
    );
  }
}
