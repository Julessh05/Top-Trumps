library toptrumps.desktopviews;

import 'package:flutter/material.dart';
import 'package:string_translate/string_translate.dart' show Translate;

class EditorDesktop extends StatefulWidget {
  const EditorDesktop({super.key});

  @override
  State<EditorDesktop> createState() => _EditorDesktopState();
}

class _EditorDesktopState extends State<EditorDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit".tr()),
      ),
    );
  }
}
