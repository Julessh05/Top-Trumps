library toptrumps.mobileviews;

import 'package:flutter/material.dart';
import 'package:string_translate/string_translate.dart' show Translate;

final class AddDeckMobile extends StatelessWidget {
  const AddDeckMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Deck".tr()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: "Name",
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.add_to_home_screen),
                  ),
                  Center(
                    child: Text("Add Card".tr()),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
