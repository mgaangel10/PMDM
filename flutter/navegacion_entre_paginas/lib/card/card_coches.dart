import 'dart:html';

import 'package:flutter/material.dart';

class CardCoches extends StatelessWidget {
  const CardCoches({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Text('A card that can be tapped'),
        ),
      ),
    );
  }
}
